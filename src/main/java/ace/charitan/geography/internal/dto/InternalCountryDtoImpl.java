package ace.charitan.geography.internal.dto;

public record InternalCountryDtoImpl(Long id, String code, String name, String region)
    implements InternalCountryDto {

  @Override
  public Long getId() {
    return id;
  }

  @Override
  public String getCode() {
    return code;
  }

  @Override
  public String getName() {
    return name;
  }

  @Override
  public String getRegion() {
    return region;
  }
}
