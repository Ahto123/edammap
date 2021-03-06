package edammapper.input.csv;

import java.text.ParseException;

import com.opencsv.bean.CsvBind;

import edammapper.input.Input;

public class SEQwiki implements Input {

	@CsvBind(required = true)
	private String name;

	@CsvBind(required = true)
	private String name2;

	@CsvBind(required = true)
	private String summary;

	@CsvBind
	private String domains;

	@CsvBind
	private String methods;

	@CsvBind
	private String features;

	@CsvBind
	private String publications;

	@CsvBind
	private String webpages;

	@CsvBind
	private String docs;

	@Override
	public void check(int i) throws ParseException {
		if (name == null || name.equals("")) {
			throw new ParseException("\"Name\" column missing or some entry in that column missing! (" + i + ")", i);
		}
		if (name2 == null || name2.equals("")) {
			throw new ParseException("\"Name2\" column missing or some entry in that column missing! (" + i + ")", i);
		}
		if (!name.equals(name2)) {
			throw new ParseException("\"Name\" and \"Name2\" columns must have equal content! (" + i + ")", i);
		}
		if (summary == null || summary.equals("")) {
			throw new ParseException("\"Summary\" column missing or some entry in that column missing! (" + i + ")", i);
		}
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getName2() {
		return name2;
	}
	public void setName2(String name2) {
		this.name2 = name2;
	}

	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getDomains() {
		return domains;
	}
	public void setDomains(String domains) {
		this.domains = domains;
	}

	public String getMethods() {
		return methods;
	}
	public void setMethods(String methods) {
		this.methods = methods;
	}

	public String getFeatures() {
		return features;
	}
	public void setFeatures(String features) {
		this.features = features;
	}

	public String getPublications() {
		return publications;
	}
	public void setPublications(String publications) {
		this.publications = publications;
	}

	public String getWebpages() {
		return webpages;
	}
	public void setWebpages(String webpages) {
		this.webpages = webpages;
	}

	public String getDocs() {
		return docs;
	}
	public void setDocs(String docs) {
		this.docs = docs;
	}
}
