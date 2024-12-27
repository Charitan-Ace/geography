package ace.charitan.geography.kafka.dto;

import ace.charitan.geography.utils.DtoWithProcessId;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

public class GetCountryByIsoCode {
    public static class GetCountryByIsoCodeRequestDto extends DtoWithProcessId {

        private String isoCode;

        public GetCountryByIsoCodeRequestDto() {

        }

        public GetCountryByIsoCodeRequestDto(String correlationId, String isoCode) {
            super(correlationId);
            this.isoCode = isoCode;
        }

        public String getIsoCode() {
            return isoCode;
        }

    }

    @Getter
    @Setter
    @NoArgsConstructor
    @AllArgsConstructor
    public class GetCountryByIsoCodeResponseDto extends DtoWithProcessId {

        private Long id;

        private String isoCode;

        private String regionName;
    }

}
