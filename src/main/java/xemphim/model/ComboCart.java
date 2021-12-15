package xemphim.model;

public class ComboCart {
	private Fastfood fastfood;
	private int quantity;
	
	public ComboCart() {}
	public ComboCart(Fastfood fastfood, int quantity) {
		super();
		this.fastfood = fastfood;
		this.quantity = quantity;
	}
	public Fastfood getFastfood() {
		return fastfood;
	}
	public void setFastfood(Fastfood fastfood) {
		this.fastfood = fastfood;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}
