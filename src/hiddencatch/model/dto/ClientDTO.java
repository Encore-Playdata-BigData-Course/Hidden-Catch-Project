package hiddencatch.model.dto;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder


@Entity(name = "Client")
public class ClientDTO {
	@Id
	String id;
	String pw;
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ClientDTO [id=");
		builder.append(id);
		builder.append(", pw=");
		builder.append(pw);
		builder.append("]");
		return builder.toString();
	}
	
}
