package m07.entity;

public class CaterogyEnt {
    private Integer id;
    private String name;

    public CaterogyEnt() {

    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public CaterogyEnt(Integer id, String name) {
        this.id = id;
        this.name = name;
    }
}
