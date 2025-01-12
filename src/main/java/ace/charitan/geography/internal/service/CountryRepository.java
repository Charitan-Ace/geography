package ace.charitan.geography.internal.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
interface CountryRepository extends JpaRepository<Country, Long> {

    Optional<Country> findOneByIsoCode(String isoCode);

    List<Country> getCountriesByNameContainsIgnoreCase(String name);
}
