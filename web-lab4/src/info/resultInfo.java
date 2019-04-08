package info;
import java.sql.Timestamp;

public class resultInfo {
	private String count="2019_0001";
	private String type;
	private String option;
	private String size;
	private Timestamp date;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public Timestamp getdate() {
		return date;
	}
	public void setdate(Timestamp date) {
		this.date = date;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}

}
