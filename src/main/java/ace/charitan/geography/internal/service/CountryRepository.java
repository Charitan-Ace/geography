package ace.charitan.geography.internal.service;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
interface CountryRepository extends JpaRepository<Country, Long> {

    Optional<Country> findOneByIsoCode(String isoCode);

}
