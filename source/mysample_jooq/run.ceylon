import org.jooq.impl {
	DSL
}
import org.jooq {
	Result,
	SQLDialect,
	DSLContext
}
import jooq_metadata.gen.tables.records {
	PessoaRecord
}
import jooq_metadata.gen.tables {
	Pessoa {
		pessoa
	},
	Dependente {
		dependente
	}
}
import mysample_jooq.datasource {
	postgres
}

DSLContext dsl = DSL.using(postgres.connection, SQLDialect.postgres94);

shared void runBasicQuery() {
	Result<PessoaRecord> pessoas = dsl.selectFrom(pessoa).fetch();
	for (pessoa in pessoas) {
		print("Pessoa: ``pessoa.id`` ``pessoa.nome``");
	}
}

shared void runQueryByName() {
	value pessoas = 
			dsl.selectFrom(pessoa)
			.where(pessoa.nome.startsWith("Diego"));
	
	for (pessoa in pessoas) {
		print("Pessoa: ``pessoa.id`` ``pessoa.nome``");
	}
}

shared void runQueryWithJoin() {
	value rows = 
			dsl.select(pessoa.nome, dependente.nome)
			.from(pessoa)
			.join(dependente).on(pessoa.id.eq(dependente.idPessoa))
			.where(pessoa.nome.startsWith("Diego"));
	
	for (row in rows) {
		print("Pessoa: ``row.getValue(pessoa.nome)`` ``row.getValue(dependente.nome)``");
	}
}


