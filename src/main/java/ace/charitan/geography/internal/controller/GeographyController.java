package ace.charitan.geography.internal.controller;

import ace.charitan.geography.internal.dto.InternalCountryDto;
import ace.charitan.geography.internal.dto.InternalRegionDto;
import ace.charitan.geography.internal.service.InternalGeographyService;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
class GeographyController {

  @Autowired private InternalGeographyService internalGeographyService;

  @GetMapping("/region")
  ResponseEntity<List<InternalRegionDto>> getAllRegions() {
    return ResponseEntity.ok(internalGeographyService.getAllRegions());
  }

  @GetMapping("/country")
  ResponseEntity<List<InternalCountryDto>> getAllCountries(
      @RequestParam(value = "name", defaultValue = "") String name) {
    return ResponseEntity.ok(internalGeographyService.getCountriesByName(name));
  }

  @GetMapping("/country/{code}")
  ResponseEntity<InternalCountryDto> getCountryByCode(@PathVariable String code) {
    Optional<InternalCountryDto> optionalCountry =
        internalGeographyService.getHttpCountryByCode(code);
    return optionalCountry
        .map(ResponseEntity::ok)
        .orElseGet(() -> ResponseEntity.badRequest().build());
  }
}
