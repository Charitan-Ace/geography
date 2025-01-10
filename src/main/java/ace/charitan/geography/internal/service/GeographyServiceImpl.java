package ace.charitan.geography.internal.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ace.charitan.common.dto.geography.GetCountryByIsoCode.GetCountryByIsoCodeRequestDto;
import ace.charitan.common.dto.geography.GetCountryByIsoCode.GetCountryByIsoCodeResponseDto;

@Service
class GeographyServiceImpl implements InternalGeographyService {

    @Autowired
    private CountryRepository countryRepository;

    @Autowired
    private RegionRepository regionRepository;

    @Override
    public GetCountryByIsoCodeResponseDto getCountryByIsoCode(GetCountryByIsoCodeRequestDto requestDto) {
        String isoCode = requestDto.getIsoCode();

        System.out.println("in" + requestDto.getIsoCode());

        // Find country by iso code
        Optional<Country> optionalCountry = countryRepository.findOneByIsoCode(isoCode);

        System.out.println("Ok1");

        // Check available
        if (optionalCountry.isEmpty()) {
            return null;
        }

        Country country = optionalCountry.get();

        System.out.println("Ok2");

        // Find region by id
        Optional<Region> optionalRegion = regionRepository.findById(country.getRegionId());

        // Check avai
        if (optionalRegion.isEmpty()) {
            return null;
        }

        System.out.println("Ok2");
        Region region = optionalRegion.get();

        GetCountryByIsoCodeResponseDto responseDto = new GetCountryByIsoCodeResponseDto(isoCode, region.getName());
        System.out.println("responseDto" + region.getName());
        return responseDto;

    }

}
