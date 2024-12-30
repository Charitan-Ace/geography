package ace.charitan.geography.kafka;

import java.util.Map;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.kafka.support.KafkaHeaders;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.ObjectMapper;

import ace.charitan.common.dto.TestKafkaMessageDto;
import ace.charitan.common.dto.country.GetCountryByIsoCode.GetCountryByIsoCodeRequestDto;
import ace.charitan.geography.kafka.topic.ProjectProducerTopic;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Component
class GeographyConsumerService {

    // private final ObjectMapper objectMapper;

    @KafkaListener(topics = ProjectProducerTopic.PROJECT_GEOGRAPHY_GET_COUNTRY_BY_ISO_CODE, groupId = "geography-id")
    @SendTo(KafkaHeaders.REPLY_TOPIC)
    TestKafkaMessageDto handleGetCountryByIsoCode(GetCountryByIsoCodeRequestDto dto) {
        System.out.println(dto);
        // Map<String, Object> getCountryByIsoCodeRequestDto =
        // objectMapper.readValue(message, Map.class);
        // System.out.println(getCountryByIsoCodeRequestDto.get("isoCode"));
        return new TestKafkaMessageDto("afds", "fdfds");
    }

}
