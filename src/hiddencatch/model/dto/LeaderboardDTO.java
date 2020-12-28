package hiddencatch.model.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@NamedQuery(name="findId", query="select c.id from Client c where c.id = :id")
@NamedQuery(name="findPw", query="select c.pw from Client c where c.id = :id")
@NamedQuery(name="findLeaderboard", query=("select l from Leaderboard l order by l.score desc"))
@NamedQuery(name="update", query="update Client c set c.pw = :pw where c.id = :id")
@Entity(name = "Leaderboard")
public class LeaderboardDTO implements Serializable {
	String id;
	int score;
	@Id
	String time;
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("LeaderboardDTO [id=");
		builder.append(id);
		builder.append(", score=");
		builder.append(score);
		builder.append(", time=");
		builder.append(time);
		builder.append("]");
		return builder.toString();
	}
	
}

