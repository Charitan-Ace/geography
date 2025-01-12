package ace.charitan.geography.internal.dto;

public record InternalRegionDtoImpl(Long id, String name) implements InternalRegionDto{

  @Override
  public String getRegionName() {
    return name;
  }

  @Override
  public Long getRegionId() {
    return id;
  }
}
