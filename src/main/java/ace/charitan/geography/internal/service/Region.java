package ace.charitan.geography.internal.service;

import ace.charitan.geography.internal.utils.AbstractEntity;
import jakarta.persistence.Entity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
class Region extends AbstractEntity {

    private String name;

}
