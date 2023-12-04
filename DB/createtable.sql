--  DROP TABLE IF EXISTS
DROP TABLE IF EXISTS llmmodels;
DROP TABLE IF EXISTS qa_8k;
DROP TABLE IF EXISTS qa_8k_llmmodels;
DROP TABLE IF EXISTS qa_cat;
DROP TABLE IF EXISTS qa_cat_llmmodels;
DROP TABLE IF EXISTS qa_dialog;
DROP TABLE IF EXISTS qa_dialog_llmmodels;
DROP TABLE IF EXISTS qa_math;
DROP TABLE IF EXISTS qa_math_llmmodels;
DROP TABLE IF EXISTS qa_wrongdata;
DROP TABLE IF EXISTS qa_wrongdata_llmmodels;
DROP TABLE IF EXISTS qa_ethical;
DROP TABLE IF EXISTS qa_ethical_llmmodels;
DROP TABLE IF EXISTS qa_code;
DROP TABLE IF EXISTS qa_code_llmmodels;
DROP TABLE IF EXISTS qa_sources;
DROP TABLE IF EXISTS qa_sources_llmmodels;

--  CREATE TABLE
CREATE TABLE llmmodels (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    path TEXT NOT NULL,
    prompt_template TEXT,
    maxtokens INTEGER
);

CREATE TABLE qa_8k (
    id INTEGER PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL,
    domian TEXT
);

CREATE TABLE qa_8k_llmmodels (
    id INTEGER PRIMARY KEY,
    qa_8k_id INTEGER NOT NULL,
    llmmodels_id INTEGER NOT NULL,
    language TEXT NOT NULL,
    similarity REAL NOT NULL,
    answerLLM TEXT,
    FOREIGN KEY (qa_8k_id) REFERENCES qa_8k(id),
    FOREIGN KEY (llmmodels_id) REFERENCES llmmodels(id)
);


CREATE TABLE qa_dialog (
    id INTEGER PRIMARY KEY,
    q1 TEXT NOT NULL,
    q2 TEXT NOT NULL,
    q3 TEXT NOT NULL,
    q4 TEXT NOT NULL,
    a1 TEXT NOT NULL,
    a2 TEXT NOT NULL,
    a3 TEXT NOT NULL,
    a4 TEXT NOT NULL
);

CREATE TABLE qa_dialog_llmmodels (
    id INTEGER PRIMARY KEY,
    qa_dialog_id INTEGER NOT NULL,
    llmmodels_id INTEGER NOT NULL,
    language TEXT NOT NULL,
    aLLM1 TEXT NOT NULL,
    aLLM2 TEXT NOT NULL,
    aLLM3 TEXT NOT NULL,
    aLLM4 TEXT NOT NULL,
    FOREIGN KEY (qa_dialog_id) REFERENCES qa_dialog(id),
    FOREIGN KEY (llmmodels_id) REFERENCES llmmodels(id)
);
CREATE TABLE qa_math (
    id INTEGER PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL
);

CREATE TABLE qa_math_llmmodels (
    id INTEGER PRIMARY KEY,
    qa_math_id INTEGER NOT NULL,
    llmmodels_id INTEGER NOT NULL,
    language TEXT NOT NULL,
    answerLLM TEXT NOT NULL,
    FOREIGN KEY (qa_math_id) REFERENCES qa_math(id),
    FOREIGN KEY (llmmodels_id) REFERENCES llmmodels(id)
);

CREATE TABLE qa_wrongdata (
    id INTEGER PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL
);

CREATE TABLE qa_wrongdata_llmmodels (
    id INTEGER PRIMARY KEY,
    qa_wrongdata_id INTEGER NOT NULL,
    llmmodels_id INTEGER NOT NULL,
    language TEXT NOT NULL,
    answerLLM TEXT NOT NULL,
    FOREIGN KEY (qa_wrongdata_id) REFERENCES qa_wrongdata(id),
    FOREIGN KEY (llmmodels_id) REFERENCES llmmodels(id)
);


CREATE TABLE qa_code (
    id INTEGER PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL
);

CREATE TABLE qa_code_llmmodels (
    id INTEGER PRIMARY KEY,
    qa_code_id INTEGER NOT NULL,
    llmmodels_id INTEGER NOT NULL,
    language TEXT NOT NULL,
    answerLLM TEXT NOT NULL,
    FOREIGN KEY (qa_code_id) REFERENCES qa_code(id),
    FOREIGN KEY (llmmodels_id) REFERENCES llmmodels(id)
);

CREATE TABLE qa_ethical (
    id INTEGER PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL
);

CREATE TABLE qa_ethical_llmmodels (
    id INTEGER PRIMARY KEY,
    qa_ethical_id INTEGER NOT NULL,
    llmmodels_id INTEGER NOT NULL,
    language TEXT NOT NULL,
    answerLLM TEXT NOT NULL,
    FOREIGN KEY (qa_ethical_id) REFERENCES qa_ethical(id),
    FOREIGN KEY (llmmodels_id) REFERENCES llmmodels(id)
);


CREATE TABLE qa_sources (
    id INTEGER PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL
);

CREATE TABLE qa_sources_llmmodels (
    id INTEGER PRIMARY KEY,
    qa_sources_id INTEGER NOT NULL,
    llmmodels_id INTEGER NOT NULL,
    language TEXT NOT NULL,
    answerLLM TEXT NOT NULL,
    FOREIGN KEY (qa_sources_id) REFERENCES qa_sources(id),
    FOREIGN KEY (llmmodels_id) REFERENCES llmmodels(id)
);

--sqlite3 benchmarks.db < createtable.sql

