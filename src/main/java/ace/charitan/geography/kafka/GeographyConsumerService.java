package ace.charitan.geography.kafka;

import java.util.Map;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.ObjectMapper;

import ace.charitan.geography.kafka.dto.GetCountryByIsoCode.GetCountryByIsoCodeRequestDto;
import ace.charitan.geography.kafka.topic.ProjectProducerTopic;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Component
class GeographyConsumerService {

    private final ObjectMapper objectMapper;

    @KafkaListener(topics = ProjectProducerTopic.PROJECT_GEOGRAPHY_GET_COUNTRY_BY_ISO_CODE, groupId = "project-id")
    void handleGetCountryByIsoCode(GetCountryByIsoCodeRequestDto dto) {
        try {
            System.out.println(dto);
            // Map<String, Object> getCountryByIsoCodeRequestDto = objectMapper.readValue(message, Map.class);
            // System.out.println(getCountryByIsoCodeRequestDto.get("isoCode"));
        } catch (Exception e) {
            System.err.println("Failed to process donor created event: " + e.getMessage());
            e.printStackTrace();
        }
    }

}
