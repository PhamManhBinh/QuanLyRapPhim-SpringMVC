package xemphim.model;

import java.io.Serializable;
import javax.persistence.*;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.sql.Timestamp;
import java.util.List;


/**
 * The persistent class for the ghe database table.
 * 
 */
@Entity
@Table(name="ghe")
@NamedQuery(name="Ghe.findAll", query="SELECT g FROM Ghe g")
public class Ghe implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(unique=true, nullable=false)
	private int id;

	@Column(name="created_at")
	@CreationTimestamp
	private Timestamp createdAt;

	@Column(nullable=false, length=1)
	private String hang;

	@Column(nullable=false)
	private int soghe;

	@Column(name="updated_at")
	@UpdateTimestamp
	private Timestamp updatedAt;

	//bi-directional many-to-one association to Rap
	@ManyToOne
	@JoinColumn(name="rap_id", nullable=false)
	private Rap rap;

	//bi-directional many-to-one association to Ve
	@OneToMany(mappedBy="ghe")
	private List<Ve> ves;

	public Ghe() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Timestamp getCreatedAt() {
		return this.createdAt;
	}

	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}

	public String getHang() {
		return this.hang;
	}

	public void setHang(String hang) {
		this.hang = hang;
	}

	public int getSoghe() {
		return this.soghe;
	}

	public void setSoghe(int soghe) {
		this.soghe = soghe;
	}

	public Timestamp getUpdatedAt() {
		return this.updatedAt;
	}

	public void setUpdatedAt(Timestamp updatedAt) {
		this.updatedAt = updatedAt;
	}

	public Rap getRap() {
		return this.rap;
	}

	public void setRap(Rap rap) {
		this.rap = rap;
	}

	public List<Ve> getVes() {
		return this.ves;
	}

	public void setVes(List<Ve> ves) {
		this.ves = ves;
	}

	public Ve addVe(Ve ve) {
		getVes().add(ve);
		ve.setGhe(this);

		return ve;
	}

	public Ve removeVe(Ve ve) {
		getVes().remove(ve);
		ve.setGhe(null);

		return ve;
	}

}