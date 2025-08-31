package empvista.utils;

public class GenericObj<T> {
	
	private T content;

    public GenericObj(T content) {
        this.content = content;
    }

    public T getContent() {
        return content;
    }

}
