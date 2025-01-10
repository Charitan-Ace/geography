package ace.charitan.geography.internal.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
interface RegionRepository extends JpaRepository<Region, Long> {

}
