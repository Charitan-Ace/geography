package ace.charitan.geography.internal.service;

import ace.charitan.common.dto.geography.GetCountryByIsoCode.GetCountryByIsoCodeRequestDto;
import ace.charitan.common.dto.geography.GetCountryByIsoCode.GetCountryByIsoCodeResponseDto;
import ace.charitan.geography.internal.dto.InternalCountryDto;
import ace.charitan.geography.internal.dto.InternalRegionDto;
import java.util.List;
import java.util.Optional;

public interface InternalGeographyService {

    GetCountryByIsoCodeResponseDto getCountryByIsoCode(GetCountryByIsoCodeRequestDto requestDto);


    List<InternalRegionDto> getAllRegions();

    List<InternalCountryDto> getAllCountry();

    Optional<InternalCountryDto> getHttpCountryByCode(String code);

    List<InternalCountryDto> getCountriesByName(String name);
}
