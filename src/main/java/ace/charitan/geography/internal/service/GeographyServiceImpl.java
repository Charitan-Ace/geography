package ace.charitan.geography.internal.service;

import ace.charitan.common.dto.geography.GetCountryByIsoCode.GetCountryByIsoCodeRequestDto;
import ace.charitan.common.dto.geography.GetCountryByIsoCode.GetCountryByIsoCodeResponseDto;
import ace.charitan.geography.internal.dto.InternalCountryDto;
import ace.charitan.geography.internal.dto.InternalCountryDtoImpl;
import ace.charitan.geography.internal.dto.InternalRegionDto;
import ace.charitan.geography.internal.dto.InternalRegionDtoImpl;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
class GeographyServiceImpl implements InternalGeographyService {

  @Autowired private CountryRepository countryRepository;

  @Autowired private RegionRepository regionRepository;

  @Override
  public GetCountryByIsoCodeResponseDto getCountryByIsoCode(
      GetCountryByIsoCodeRequestDto requestDto) {
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

    GetCountryByIsoCodeResponseDto responseDto =
        new GetCountryByIsoCodeResponseDto(isoCode, region.getName());
    System.out.println("responseDto" + region.getName());
    return responseDto;
  }

  @Override
  public List<InternalRegionDto> getAllRegions() {
    return regionRepository.findAll().stream()
        .map(region -> new InternalRegionDtoImpl(region.getId(), region.getName()))
        .collect(Collectors.toList());
  }

  @Override
  public List<InternalCountryDto> getAllCountry() {
    return countryRepository.findAll().stream()
        .map(
            country -> {
              Optional<Region> region = regionRepository.findById(country.getRegionId());
              return region
                  .map(
                      value ->
                          new InternalCountryDtoImpl(
                              country.getId(),
                              country.getIsoCode(),
                              country.getName(),
                              value.getName()))
                  .orElseGet(
                      () ->
                          new InternalCountryDtoImpl(
                              country.getId(), country.getIsoCode(), country.getName(), "Asia"));
            })
        .collect(Collectors.toList());
  }

  @Override
  public Optional<InternalCountryDto> getHttpCountryByCode(String code) {
    Optional<Country> optionalCountry = countryRepository.findOneByIsoCode(code);
    if (optionalCountry.isEmpty()) {
      return Optional.empty();
    }
    Country country = optionalCountry.get();
    Optional<Region> region = regionRepository.findById(country.getRegionId());
    return Optional.of(
        region
            .map(
                value ->
                    new InternalCountryDtoImpl(
                        country.getId(), country.getIsoCode(), country.getName(), value.getName()))
            .orElseGet(
                () ->
                    new InternalCountryDtoImpl(
                        country.getId(), country.getIsoCode(), country.getName(), "Asia")));
  }

  @Override
  public List<InternalCountryDto> getCountriesByName(String name) {
    return countryRepository.getCountriesByNameContainsIgnoreCase(name).stream()
        .map(
            country -> {
              Optional<Region> region = regionRepository.findById(country.getRegionId());
              return region
                  .map(
                      value ->
                          new InternalCountryDtoImpl(
                              country.getId(),
                              country.getIsoCode(),
                              country.getName(),
                              value.getName()))
                  .orElseGet(
                      () ->
                          new InternalCountryDtoImpl(
                              country.getId(), country.getIsoCode(), country.getName(), "Asia"));
            })
        .collect(Collectors.toList());
  }
}
