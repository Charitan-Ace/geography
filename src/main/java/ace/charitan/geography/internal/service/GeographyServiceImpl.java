package ace.charitan.geography.internal.service;

import org.springframework.stereotype.Service;

import ace.charitan.common.dto.geography.GetCountryByIsoCode.GetCountryByIsoCodeRequestDto;
import ace.charitan.common.dto.geography.GetCountryByIsoCode.GetCountryByIsoCodeResponseDto;

@Service
class GeographyServiceImpl implements InternalGeographyService {

    @Override
    public GetCountryByIsoCodeResponseDto getCountryByIsoCode(GetCountryByIsoCodeRequestDto requestDto) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getCountryByIsoCode'");
    }

}
