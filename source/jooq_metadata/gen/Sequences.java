/**
 * This class is generated by jOOQ
 */
package jooq_metadata.gen;


import javax.annotation.Generated;

import org.jooq.Sequence;
import org.jooq.impl.SequenceImpl;


/**
 * Convenience access to all sequences in public
 */
@Generated(
    value = {
        "http://www.jooq.org",
        "jOOQ version:3.8.4"
    },
    comments = "This class is generated by jOOQ"
)
@SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class Sequences {

    /**
     * The sequence <code>public.dependente_id_seq</code>
     */
    public static final Sequence<Long> dependenteIdSeq = new SequenceImpl<Long>("dependente_id_seq", Public.public_, org.jooq.impl.SQLDataType.BIGINT.nullable(false));

    /**
     * The sequence <code>public.pessoa_id_seq</code>
     */
    public static final Sequence<Long> pessoaIdSeq = new SequenceImpl<Long>("pessoa_id_seq", Public.public_, org.jooq.impl.SQLDataType.BIGINT.nullable(false));
}