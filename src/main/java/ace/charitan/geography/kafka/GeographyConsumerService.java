package ace.charitan.geography.kafka;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.kafka.support.KafkaHeaders;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Component;

import ace.charitan.common.dto.geography.GetCountryByIsoCode.GetCountryByIsoCodeRequestDto;
import ace.charitan.common.dto.geography.GetCountryByIsoCode.GetCountryByIsoCodeResponseDto;
import ace.charitan.geography.internal.service.InternalGeographyService;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Component
class GeographyConsumerService {

    // private final ObjectMapper objectMapper;

    @Autowired
    private InternalGeographyService geographyService;

    @KafkaListener(topics = "subscription-geography-get-country-by-iso-code", groupId = "geography")
    @SendTo(KafkaHeaders.REPLY_TOPIC)
    GetCountryByIsoCodeResponseDto handlGetCountryByIsoCode(GetCountryByIsoCodeRequestDto requestDto) {
        return geographyService.getCountryByIsoCode(requestDto);
    }

    // TestKafkaMessageDto handleGetCountryByIsoCode(TestKafkaMessageDto dto) {
    // System.out.println("Geo receive" + dto);
    // // Map<String, Object> getCountryByIsoCodeRequestDto =
    // // objectMapper.readValue(message, Map.class);
    // // System.out.println(getCountryByIsoCodeRequestDto.get("isoCode"));
    // return new TestKafkaMessageDto("afds", "fdfds");
    // }

}
