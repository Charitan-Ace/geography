package ace.charitan.geography.internal.service;

import ace.charitan.common.dto.geography.GetCountryByIsoCode.GetCountryByIsoCodeRequestDto;
import ace.charitan.common.dto.geography.GetCountryByIsoCode.GetCountryByIsoCodeResponseDto;

public interface InternalGeographyService {

    GetCountryByIsoCodeResponseDto getCountryByIsoCode(GetCountryByIsoCodeRequestDto requestDto);

}
