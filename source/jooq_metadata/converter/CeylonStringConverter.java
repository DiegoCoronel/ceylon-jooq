package jooq_metadata.converter;

import org.jooq.Converter;

public class CeylonStringConverter implements Converter<String, ceylon.language.String> {
	private static final long serialVersionUID = 1L;

	@Override
	public ceylon.language.String from(String databaseObject) {
		return databaseObject == null ? null : new ceylon.language.String(databaseObject);
	}

	@Override
	public String to(ceylon.language.String userObject) {
		return userObject == null ? null : userObject.value;
	}

	@Override
	public Class<String> fromType() {
		return String.class;
	}

	@Override
	public Class<ceylon.language.String> toType() {
		return ceylon.language.String.class;
	}

}
