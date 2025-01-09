#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('EffectOfEcliptaProst_DATA_2024-10-20_1615.csv')
#Setting Labels

label(data$record_id)="Nome completo"
label(data$redcap_event_name)="Event Name"
label(data$redcap_repeat_instrument)="Repeat Instrument"
label(data$redcap_repeat_instance)="Repeat Instance"
label(data$redcap_survey_identifier)="Survey Identifier"
label(data$personal_photo)="Foto pessoal identificadora [personal_photo:inline]"
label(data$date_birth)="Data de nascimento"
label(data$eleg_age)="Idade"
label(data$ubs)="UBS/ESF "
label(data$email)="Email:"
label(data$address)="Endereço"
label(data$hood)="Bairro"
label(data$mobile)="Validação: +55 seguido do DDD (2 dígitos) e número de celular (9 dígitos), sem espaços Chat on WhatsApp orCall"
label(data$whatsapp)="WhatsApp link or phone call link"
label(data$mob_option)="Quais as formas possíveis de contato pelo celular?"
label(data$mob_hour)="Quais os horários possíveis para contato?"
label(data$mob_days)="Quais os dias possíveis para contato?"
label(data$phone)="Número de telefone fixo:"
label(data$otherphone)="Número do telefone alternativo:"
label(data$otherphone_n)="Nome do contato do telefone alternativo"
label(data$otherphone_2)="Número do telefone alternativo:"
label(data$otherphone_n2)="Nome do contato do telefone alternativo"
label(data$eleg_transport)="Transporte ao centro de pesquisa"
label(data$eleg_howknow)="Forma como ficou sabendo da pesquisa"
label(data$availability_limit_yn)="Comentários ou limitações sobre a disponibilidade de dias / horários para comparecer ao centro de pesquisa"
label(data$availability_limit)="Comentários ou limitações sobre a disponibilidade de dias / horários para comparecer ao centro de pesquisa"
label(data$sex)="Sexo"
label(data$eleg_preg_yn)="A candidata está grávida ou amamentando?"
label(data$eleg_height)="Altura (cm), relatada"
label(data$eleg_weight)="Peso (kg), relatado:ponto como separador decimal, 1 casa decimal"
label(data$eleg_bmi)="IMC (relatado)"
label(data$eleg_com_yn)="O candidato relata ter qualquer outro problema de saúde além da obesidade?"
label(data$eleg_com_list)="Quais? "
label(data$eleg_drugs_yn)="O candidato faz uso de algummedicamento?"
label(data$eleg_drugs_list)="Quais? (liste todos)"
label(data$eleg_fem_high___1)="A candidata apresenta algum dos critérios de alto risco de gravidez? (choice=Utilização de contraceptivos ineficazes, que incluem uso exclusivo de: método de barreia (preservativo, diafragma) ou métodos comportamentais, como temperatura corporal, percepção da ovulação pelo corrimento e calendário menstrual (tabelinha))"
label(data$eleg_fem_high___2)="A candidata apresenta algum dos critérios de alto risco de gravidez? (choice=Mulheres que usam contraceptivos de forma inconsistente ou incorreta;)"
label(data$eleg_fem_high___3)="A candidata apresenta algum dos critérios de alto risco de gravidez? (choice=Mulheres que tiveram relações sexuais sem proteção;)"
label(data$eleg_fem_high___4)="A candidata apresenta algum dos critérios de alto risco de gravidez? (choice=Mulheres que estão em tratamento para infertilidade;)"
label(data$eleg_fem_high___5)="A candidata apresenta algum dos critérios de alto risco de gravidez? (choice=Mulheres no período pós-parto;)"
label(data$eleg_fem_high___0)="A candidata apresenta algum dos critérios de alto risco de gravidez? (choice=Nenhum destes)"
label(data$eleg_fem_high___ni)="A candidata apresenta algum dos critérios de alto risco de gravidez? (choice=No information)"
label(data$eleg_fem_high___unk)="A candidata apresenta algum dos critérios de alto risco de gravidez? (choice=Unknown)"
label(data$eleg_fem_high___nask)="A candidata apresenta algum dos critérios de alto risco de gravidez? (choice=Not asked)"
label(data$eleg_fem_high___asku)="A candidata apresenta algum dos critérios de alto risco de gravidez? (choice=Asked but unknown)"
label(data$eleg_fem_high___inv)="A candidata apresenta algum dos critérios de alto risco de gravidez? (choice=Invalid)"
label(data$eleg_fem_high___na)="A candidata apresenta algum dos critérios de alto risco de gravidez? (choice=Not applicable)"
label(data$eleg_femhigh_yn)="Nestes casos, a realização de teste de gravidez é obrigatória, assim como a utilização de método contraceptivo eficaz durante o estudo. A escolha do método contraceptivo dependerá de decisão conjunta entre participante e médico. A participante concorda em realizar teste de gravidez Eutilizar método contraceptivo durante o estudo?"
label(data$eleg_fem_low___1)="Marque todos os itens que se aplicam a candidata (choice=Uso de contraceptivos eficazes de forma consistente e correta. São considerados métodos eficazes: contraceptivos hormonais como pílulas, adesivos, injetáveis, anéis, implantes subdérmicos ou dispositivos intrauterinos)"
label(data$eleg_fem_low___2)="Marque todos os itens que se aplicam a candidata (choice=Mulheres que estão em menopausa)"
label(data$eleg_fem_low___3)="Marque todos os itens que se aplicam a candidata (choice=Mulheres submetidas a cirurgias que impossibilitam a gestação: esterilização cirúrgica (ligadura tubária ou vasectomia do parceiro), ooforectomia bilateral (retirada dos 2 ovários) ou histerectomia (retirada do útero).)"
label(data$eleg_fem_low___4)="Marque todos os itens que se aplicam a candidata (choice=Ausência de relações sexuais nos últimos 6 meses ou mais)"
label(data$eleg_fem_low___5)="Marque todos os itens que se aplicam a candidata (choice=Não tem qualquer tipo de relação sexual)"
label(data$eleg_fem_low___6)="Marque todos os itens que se aplicam a candidata (choice=Diagnóstico de infertilidade)"
label(data$eleg_fem_low___7)="Marque todos os itens que se aplicam a candidata (choice=Comportamento sexual homoafetivo exclusivo)"
label(data$eleg_fem_low___ni)="Marque todos os itens que se aplicam a candidata (choice=No information)"
label(data$eleg_fem_low___unk)="Marque todos os itens que se aplicam a candidata (choice=Unknown)"
label(data$eleg_fem_low___nask)="Marque todos os itens que se aplicam a candidata (choice=Not asked)"
label(data$eleg_fem_low___asku)="Marque todos os itens que se aplicam a candidata (choice=Asked but unknown)"
label(data$eleg_fem_low___inv)="Marque todos os itens que se aplicam a candidata (choice=Invalid)"
label(data$eleg_fem_low___na)="Marque todos os itens que se aplicam a candidata (choice=Not applicable)"
label(data$eleg_fem_low_1)="Orientar a candidata que, nestes casos, a participante deverá manter o uso contínuo e regular do método contraceptivo durante o estudo. A participante concorda?"
label(data$eleg2_labnotes)="Comentários"
label(data$d_consulta_agendamento_2)="Data da consulta médica criada no RKM para agendamento dos exames laboratoriais"
label(data$eleg2_labrequest_2)="Data em que foi feita a solicitação dos exames laboratoriais:"
label(data$eleg2_labschedule_2)="Data agendada para coleta"
label(data$eleg2_whichlab_2)="Qual o local agendado para coleta?"
label(data$eleg2_labcollect)="Exames laboratoriais coletados?"
label(data$eleg2_labchecked)="Exames laboratoriais checados?"
label(data$eleg2_labfinding)="Alguma alteração nos exames laboratoriais?"
label(data$eleg2_labex)="Existe alguma alteração laboratorial excludente?"
label(data$eleg2_bhcg)="Beta HCG"
label(data$eleg2_f_highrisk_2)="Método contraceptivo:"
label(data$normalcycle)="O ciclo hormonal menstrual está preservado?"
label(data$contraception_ok)="Risco de gestação e método contraceptivo:A participante já pode iniciar o estudo?"
label(data$eleg2_contraception)="Atenção! Não incluir participante!"
label(data$tcle_sent)="TCLE enviado?"
label(data$tcle_read)="TCLE lido pelo participante?"
label(data$tcle_questions)="O participante tem alguma dúvida sobre os aspectos da pesquisa tratados no TCLE?"
label(data$tcle_questions_2)="TCLE dúvidas?"
label(data$tcle_questions_3)="Dúvidas esclarecidas?"
label(data$desire_ok_2)="O participante mantém desejo de participar?"
label(data$first_visit_2)="Data agendada para a primeira visita"
label(data$sms_agree)="Gostaria de *solicitar sua autorização* para te enviarmos algumas *mensagens de texto (SMS)*. Esta será uma das formas que iremos nos comunicar através durante a pesquisa. Se concordar, você irá receber mensagens de texto para te *lembrar de datas importantes como datas de consultas ou coleta de exames* ou para responder a alguns *questionários ou perguntas*que são importantes para a pesquisa. Você concorda?"
label(data$block_alerts_1st)="Block alerts for 1st visit and 1st questionnaires?"
label(data$eleg_date)="Data e hora da entrevista"
label(data$eleg_interviewer)="Entrevistador"
label(data$elegibilidade_complete)="Complete?"
label(data$consent_c16735_yn)="Primeira Visita ao centro de pesquisa Finalizar a obtenção do consentimento através da assinatura do TCLE. O TCLE foi assinado?"
label(data$consent_date)="Data da assinatura do TCLE"
label(data$consent_c16735)="Faça o upload do TCLE assinado e escaneado"
label(data$tcle_complete)="Complete?"
label(data$race)="Raça CDISC SDTM Race Terminology (NCIT: C74457)"
label(data$race_other)="Especifique"
label(data$maritalstatus)="Estado civilCDISC SDTM Marital Status Terminology (NCIT: C76348)"
label(data$education)="Número de anos que estudou Number of Years of Education (NCIT: C122393)"
label(data$employment)="Situação de emprego CDISC SDTM Employment Status Terminology (NCIT: C111108)"
label(data$cohabitants)="Número de pessoas que vivem na mesma casa Number of People in Household (NCIT: C198363)"
label(data$income)="Nível de renda Income level (NCIT: C154890)"
label(data$demographic_metadata)="Metadata (NCIT: C52095)All demographic and socioeconomic data is coded according to NCIT Ontology version 23.06d (2023-06-26)"
label(data$dados_demogrficos_complete)="Complete?"
label(data$questionrio_qualidade_de_vida_timestamp)="Survey Timestamp"
label(data$wb_1)="Como você avaliaria a sua qualidade de vida?"
label(data$wb_2)="Quão satisfeito(a) você está com a sua saúde?"
label(data$wb_3)="Em que medida você acha que sua dor (física) impede você de fazer o que você precisa?"
label(data$wb_4)="O quanto você precisa de algum tratamento médico para levar sua vida diária?"
label(data$wb_5)="O quanto você aproveita a vida?"
label(data$wb_6)="Em que medida você acha que a sua vida tem sentido?"
label(data$wb_7)="O quanto você consegue se concentrar?"
label(data$wb_8)="Quão seguro(a) você se sente em sua vida diária?"
label(data$wb_9)="Quão saudável é o seu ambiente físico (clima, barulho, poluição, atrativos)?"
label(data$wb_10)="Você tem energia suficiente para seu dia-a-dia?"
label(data$wb_11)="Você é capaz de aceitar sua aparência física?"
label(data$wb_12)="Você tem dinheiro suficiente para satisfazer suas necessidades?"
label(data$wb_13)="Quão disponíveis para você estão as informações que precisa no seu dia-a-dia?"
label(data$wb_14)="Em que medida você tem oportunidades de atividade de lazer?"
label(data$wb_15)="Quão bem você é capaz de se locomover?"
label(data$wb_16)="Quão satisfeito(a) você está com o seu sono?"
label(data$wb_17)="Quão satisfeito(a) você está com sua capacidade de desempenhar as atividades do seu dia-a-dia?"
label(data$wb_18)="Quão satisfeito(a) você está com sua capacidade para o trabalho?"
label(data$wb_19)="Quão satisfeito(a) você está consigo mesmo?"
label(data$wb_20)="Quão satisfeito(a) você está com suas relações pessoais (amigos, parentes, conhecidos, colegas)?"
label(data$wb_21)="Quão satisfeito(a) você está com sua vida sexual?"
label(data$wb_22)="Quão satisfeito(a) você está com o apoio que você recebe de seus amigos?"
label(data$wb_23)="Quão satisfeito(a) você está com as condições do local onde mora?"
label(data$wb_24)="Quão satisfeito(a) você está com o seu acesso aos serviços de saúde?"
label(data$wb_25)="Quão satisfeito(a) você está com o seu meio de transporte?"
label(data$wb_26)="Com que frequência você tem sentimentos negativos tais como mau humores, desespero, ansiedade, depressão?"
label(data$whoqol_how)="Alguém te ajudou a preencher este questionário?"
label(data$whoqol_a_v2)="Você tem algum comentário sobre o questionário?"
label(data$wb_1_score)="General quality of life: Score"
label(data$wb_2_score)="General health: Score	"
label(data$wb_physical)="Physical domain	"
label(data$wb_psychological)="Psychological domain	"
label(data$wb_social)="Social Relationships domain	"
label(data$wb_environment)="Environment domain	"
label(data$wb_upload)="PDF Upload"
label(data$questionrio_qualidade_de_vida_complete)="Complete?"
label(data$escore_de_depresso_ansiedade_e_estresse_timestamp)="Survey Timestamp"
label(data$dass21_1)="Achei difícil me acalmar"
label(data$dass21_2)="Senti minha boca seca"
label(data$dass21_3)="Não consegui vivenciar nenhum sentimento positivo"
label(data$dass21_4)="Tive dificuldade em respirar em alguns momentos (ex. respiração ofegante, falta de ar, sem ter feito nenhum esforço físico)"
label(data$dass21_5)="Achei difícil ter iniciativa para fazer as coisas"
label(data$dass21_6)="Tive a tendência de reagir de forma exagerada às situações"
label(data$dass21_7)="Senti tremores (ex. nas mãos)"
label(data$dass21_8)="Senti que estava sempre nervoso"
label(data$dass21_9)="Preocupei-me com situações em que eu pudesse entrar em pânico e parecesse ridículo (a)"
label(data$dass21_10)="Senti que não tinha nada a desejar"
label(data$dass21_11)="Senti-me agitado"
label(data$dass21_12)="Achei difícil relaxar"
label(data$dass21_13)="Senti-me depressivo (a) e sem ânimo"
label(data$dass21_14)="Fui intolerante com as coisas que me impediam de continuar o que eu estava fazendo"
label(data$dass21_15)="Senti que ia entrar em pânico"
label(data$dass21_16)="Não consegui me entusiasmar com nada"
label(data$dass21_17)="Senti que não tinha valor como pessoa"
label(data$dass21_18)="Senti que estava um pouco emotivo/sensível demais"
label(data$dass21_19)="Sabia que meu coração estava alterado mesmo não tendo feito nenhum esforço físico (ex. aumento da frequência cardíaca, disritmia cardíaca)"
label(data$dass21_20)="Senti medo sem motivo"
label(data$dass21_21)="Senti que a vida não tinha sentido"
label(data$dass_depression)="DASS-21 Depression Result"
label(data$dass_anxiety)="DASS-21 Anxiety Result	"
label(data$dass_stress)="DASS-21 Stress Result	"
label(data$dass21_upload)="PDF upload"
label(data$escore_de_depresso_ansiedade_e_estresse_complete)="Complete?"
label(data$escala_de_compulso_alimentar_timestamp)="Survey Timestamp"
label(data$ecap1)="#1"
label(data$ecap2)="#2"
label(data$ecap3)="#3"
label(data$ecap4)="#4"
label(data$ecap5)="#5"
label(data$ecap6)="#6"
label(data$ecap7)="#7"
label(data$ecap8)="#8"
label(data$ecap9)="#9"
label(data$ecap10)="#10"
label(data$ecap11)="#11"
label(data$ecap12)="#12"
label(data$ecap13)="#13"
label(data$ecap14)="#14"
label(data$ecap15)="#15"
label(data$ecap16)="#16"
label(data$data_ecap)="Data que o participante respondeu o questionário:"
label(data$ecap_score_1)="ECAP SCORE"
label(data$ecap_score_2)="ECAP SCORE"
label(data$ecap_score_3)="ECAP SCORE"
label(data$ecap_score_4)="ECAP SCORE"
label(data$ecap_score_5)="ECAP SCORE 5"
label(data$ecap_score_6)="ECAP SCORE 6"
label(data$ecap_score_7)="ECAP SCORE 7"
label(data$ecap_score_8)="ECAP SCORE 8"
label(data$ecap_score_9)="ECAP SCORE 9"
label(data$ecap_score_10)="ECAP SCORE 10"
label(data$ecap_score_11)="ECAP SCORE 11"
label(data$ecap_score_12)="ECAP SCORE 12"
label(data$ecap_score_13)="ECAP SCORE 13"
label(data$ecap_score_14)="ECAP SCORE 14"
label(data$ecap_score_15)="ECAP SCORE 15"
label(data$ecap_score_16)="ECAP SCORE 16"
label(data$ecap_result)="ECAP Result"
label(data$ecap_upload)="PDF upload"
label(data$escala_de_compulso_alimentar_complete)="Complete?"
label(data$height)="Altura aferida em estadiômetro, expressa em centimetros(utilizar ponto como separador decimal e uma casa decimal)"
label(data$height_chk)="Altura aferida em estadiômetro, expressa em centimetros(utilizar ponto como separador decimal e uma casa decimal)"
label(data$weight)="Peso aferido em balança calibrada, expresso em kilogramas:validação: uma casa decimal, ponto como separador decimal"
label(data$weight_chk)="Peso aferido em balança calibrada, expresso em kilogramas:validação: uma casa decimal, ponto como separador decimal"
label(data$abdcirc_c172954)="Circunferência abdominal, expressos em centímetosvalidação: uma casa decimal, ponto como separador; aferido na altura do umbigo"
label(data$abdcirc_c172954_chk)="Circunferência abdominal, expressos em centímetosvalidação: uma casa decimal, ponto como separador; aferido na altura do umbigo"
label(data$c124475)="Circunferência do braço dominante (cm)Definição: Uma medida circunferencial da maior parte do braço superiorValidação:expresso em centímetros; ponto como separador decimal e uma casa decimal"
label(data$c124475_chk)="Circunferência do braço dominante (cm)Definição: Uma medida circunferencial da maior parte do braço superiorValidação:expresso em centímetros; ponto como separador decimal e uma casa decimal"
label(data$anthro_chkerror)="Checks for different types results for the variables of interest"
label(data$anthro_chk)="Checks if: 1. all fields have values 2. confirmation fields are identical to source field  Results 1 if true or 0 if false"
label(data$bmi)="IMC (Kg/m²)"
label(data$weight_maxideal)="Peso ideal máximo"
label(data$weight_adjusted)="Peso ajustado"
label(data$kcal_kg20)="20 kcal/kg do Peso Ajustado"
label(data$kcal_kg22)="22 kcal/kg do Peso Ajustado"
label(data$dietaryenergy)="Oferta energética mais adequada para a intervenção nutricional"
label(data$wlkg)="Weight Loss (Kg)"
label(data$wl)="Weight Loss (%)"
label(data$acr_cm)="Adbominal circunference reduction (cm)"
label(data$acr)="Abdominal circunference reduction (%)"
label(data$bmir_dec)="BMI reduction (decimal points)"
label(data$bmir)="BMI Reduction (%)"
label(data$antropometria_complete)="Complete?"
label(data$bpbia_date)="Data e hora da abertura do formulário:"
label(data$bpbia_examiner)="Examinador"
label(data$bpbia_r_sw)=" Após o participante ter deitado na maca de forma confortável, deve-se iniciar a aferição da PA após 5 minutos de decúbito dorsal, e a realização da BIA após 10 minutos do início do tempo de decúbito. "
label(data$bp_r_c124475)="Tamanho do manguito apropriado "
label(data$bp_ra_s)="    1.1   Membro Superior Direito     mmHg   Pressão Arterial Sistólica        Validação: 2 ou 3 números inteiros, sem decimal     bp_ra_s   blood pressure, right arm, systolic    "
label(data$bp_ra_d)="    1.2   Membro Superior Direito     mmHg   Pressão Arterial Diastólica        Validação: 2 ou 3 números inteiros, sem decimal     bp_ra_d   blood pressure, right arm, diastolic    "
label(data$bp_ra_mean)="    1.3   Membro Superior Direito     mmHg   Pressão Arterial Média        Validação: 2 ou 3 números inteiros, sem decimal     bp_ra_mean   blood pressure, right arm, mean          Formula:   MAP = DBP + 1/3 * (SBP - DBP)     MAP   Mean arterial pressure     DBP   Diastolic blood pressure     SBP   Systolic Blood Pressure    "
label(data$bp_la_s)="    2.1   Membro Superior Esquerdo     mmHg   Pressão Arterial Sistólica        Validação: 2 ou 3 números inteiros, sem decimal     bp_la_s   blood pressure, left arm, systolic    "
label(data$bp_la_d)="    2.2   Membro Superior Esquerdo     mmHg   Pressão Arterial Diastólica        Validação: 2 ou 3 números inteiros, sem decimal     bp_la_d   blood pressure, left arm, diastolic    "
label(data$bp_la_mean)="    2.3   Membro Superior Esquerdo     mmHg   Pressão Arterial Média        Validação: 2 ou 3 números inteiros, sem decimal     bp_la_mean   blood pressure, left arm, mean          Formula:   MAP = DBP + 1/3 * (SBP - DBP)     MAP   Mean arterial pressure     DBP   Diastolic blood pressure     SBP   Systolic Blood Pressure    "
label(data$bp_reference)="    3   Membro de referência (membro com o maior valor de Pressão Arterial Média)     bp_reference   Reference member: member with highest mean arterial pressure     "
label(data$presso_arterial_determinao_do_membro_de_referncia_complete)="Complete?"
label(data$bp_datetime)="Data e hora da abertura do formulário:"
label(data$bp_examiner)="Examinador"
label(data$bp_sw)=" Após o participante ter deitado na maca de forma confortável, deve-se iniciar a aferição da PA após 5 minutos de decúbito dorsal, e a realização da BIA após 10 minutos do início do tempo de decúbito. "
label(data$bp_c49677)="Frequência cardíaca"
label(data$bp_c60832)="Saturação de O2 (%)"
label(data$bp_r11s)="    1.1   1ª medida        Pressão Arterial Sistólica        Validação: 2 ou 3 números inteiros, sem decimal     bp_r11s   Blood pressure, reference member, 1st measurement, systolic    "
label(data$bp_r12d)="    1.2   1ª medida        Pressão Arterial Diastólica        Validação: 2 ou 3 números inteiros, sem decimal     bp_r12d   Blood pressure, reference member, 1st measurement, diastolic    "
label(data$bp_r13m)="    1.3   1ª medida        Pressão arterial média        Validação: 2 ou 3 números inteiros, sem decimal     bp_r13m   Blood pressure, reference member, 1st measurement, mean    "
label(data$bp_sw_1st)="1st measurement, stopwatch"
label(data$bp_r21s)="    2.1   2ª medida        Pressão Arterial Sistólica        Validação: 2 ou 3 números inteiros, sem decimal     bp_r21s   Blood pressure, reference member, 2nd measurement, systolic    "
label(data$bp_r21s_chk)="Confirm result     2.1   2ª medida        Pressão Arterial Sistólica        Validação: 2 ou 3 números inteiros, sem decimal     bp_r21s   Blood pressure, reference member, 2nd measurement, systolic    "
label(data$bp_r22d)="    2.2   2ª medida        Pressão Arterial Diastólica        Validação: 2 ou 3 números inteiros, sem decimal     bp_r22d   Blood pressure, reference member, 2nd measurement, diastolic    "
label(data$bp_r22d_chk)="Confirm result     2.2   2ª medida        Pressão Arterial Diastólica        Validação: 2 ou 3 números inteiros, sem decimal     bp_r22d   Blood pressure, reference member, 2nd measurement, diastolic    "
label(data$bp_r23m)="    2.3   2ª medida        Pressão arterial média        Validação: 2 ou 3 números inteiros, sem decimal     bp_r23m   Blood pressure, reference member, 2nd measurement, mean    "
label(data$bp_sw_2nd)="2nd measurement, stopwatch"
label(data$bp_r31s)="    3.1   3ª medida        Pressão Arterial Sistólica        Validação: 2 ou 3 números inteiros, sem decimal     bp_r31s   Blood pressure, reference member, 3rd measurement, systolic    "
label(data$bp_r31s_chk)="Confirm result     3.1   3ª medida        Pressão Arterial Sistólica        Validação: 2 ou 3 números inteiros, sem decimal     bp_r31s   Blood pressure, reference member, 3rd measurement, systolic    "
label(data$bp_r32d)="    3.2   3ª medida        Pressão Arterial Diastólica        Validação: 2 ou 3 números inteiros, sem decimal     bp_r32d   Blood pressure, reference member, 3rd measurement, diastolic    "
label(data$bp_r32d_chk)="Confirm result     3.2   3ª medida        Pressão Arterial Diastólica        Validação: 2 ou 3 números inteiros, sem decimal     bp_r32d   Blood pressure, reference member, 3rd measurement, diastolic    "
label(data$bp_r33m)="    3.3   3ª medida        Pressão arterial média        Validação: 2 ou 3 números inteiros, sem decimal     bp_r33m   Blood pressure, reference member, 3rd measurement, mean    "
label(data$bp_diff)="Diferença entre a pressão sistólica da segunda e da terceira medida, em valor absoluto."
label(data$bp_sw_3rd)=" Realize outra medição em 60 seg "
label(data$bp_r41s)="    4.1   4ª medida        Pressão Arterial Sistólica        Validação: 2 ou 4 números inteiros, sem decimal     bp_r41s   Blood pressure, reference member, 4rd measurement, systolic    "
label(data$bp_r41s_chk)="Confirm result     4.1   4ª medida        Pressão Arterial Sistólica        Validação: 2 ou 4 números inteiros, sem decimal     bp_r41s   Blood pressure, reference member, 4rd measurement, systolic    "
label(data$bp_r42d)="    4.2   4ª medida        Pressão Arterial Diastólica        Validação: 2 ou 4 números inteiros, sem decimal     bp_r42d   Blood pressure, reference member, 4rd measurement, diastolic    "
label(data$bp_r42d_chk)="Confirm result     4.2   4ª medida        Pressão Arterial Diastólica        Validação: 2 ou 4 números inteiros, sem decimal     bp_r42d   Blood pressure, reference member, 4rd measurement, diastolic    "
label(data$bp_r43m)="    4.3   4ª medida        Pressão arterial média        Validação: 2 ou 4 números inteiros, sem decimal     bp_r43m   Blood pressure, reference member, 4rd measurement, mean    "
label(data$bp_mean_s)="Mean, systolic"
label(data$bp_stdev_s)="St. dev., systolic"
label(data$bp_mean_d)="Mean, diastolic"
label(data$bp_stdev_d)="St. dev., diastolic"
label(data$bp_mean_map)="Mean, MAP"
label(data$bp_stdev_map)="St. dev., MAP"
label(data$bp_showmetadata)="Mostrar metadados?"
label(data$presso_arterial_complete)="Complete?"
label(data$bia_rawfiles)="BIA Raw Files"
label(data$bia_datetime)="Data e hora da abertura do formulário:"
label(data$bia_examiner)="Examinador"
label(data$bia_tobacco)="Fumou ao menos um cigarro nas últimas 24 horas"
label(data$bia_phact)="Fez atividade física intensa nas ultimas 24 horas:"
label(data$bia_alcohol)="Fez o uso de bebida alcoólicas nas ultimas 24 horas:"
label(data$bia_ambtemp)="Temperatura ambiente entre 23-25°C:"
label(data$bia_axtemp)="Temperatura axilar:"
label(data$bia_clothes)="Paciente com roupas leves:"
label(data$bia_objects)="Remover objetos metálicos:"
label(data$bia_hair)="Presença de pelos na topografia de adesão dos eletrodos:"
label(data$bia_hair_rem)="Remoção dos pelos com a lamina de barbear descartável:"
label(data$bia_cleaning)="Limpeza da pele com álcool 70%:"
label(data$bia_lastfood)="Horário da última ingestão de alimentos"
label(data$bia_lastliquid)="Horário da última ingestão de líquidos"
label(data$bia_decubitus)="Paciente em decúbito dorsal por ao menos 10 minutos:"
label(data$bia_time)="Horário exato da realização da BIA"
label(data$bia_fastingfood)="Tempo de jejum de alimentos, em horas"
label(data$bia_fastingliquid)="Tempo de jejum, em horas"
label(data$resistance)="Resistance / Resistência Ω (R)"
label(data$resistance_chk)="Confirm Value Resistance / Resistência Ω (R)"
label(data$reactance)="Reatância Ω (Xc)"
label(data$reactance_chk)="Confirm Value: Reatância Ω (Xc)"
label(data$pha)="Phase Angle / Ângulo de fase º (PhA)"
label(data$pha_chk)="Confirm Value: Phase Angle / Ângulo de fase º (PhA)"
label(data$bia_showmetadata)="Mostrar metadados?"
label(data$impedncia_bioeltrica_corporal_complete)="Complete?"
label(data$grip_limitations)="Existe alguma limitação visível nas mãos?"
label(data$grip_rhlimitation)="Critérios de exclusão: limitações visíveis na mão direita"
label(data$grip_lhlimitation___0)="Critérios de exclusão: limitações visíveis na mão esquerda (choice=Nenhuma)"
label(data$grip_lhlimitation___1)="Critérios de exclusão: limitações visíveis na mão esquerda (choice=Paralisia da mão)"
label(data$grip_lhlimitation___2)="Critérios de exclusão: limitações visíveis na mão esquerda (choice=Usando gesso no pulso ou na mão)"
label(data$grip_lhlimitation___3)="Critérios de exclusão: limitações visíveis na mão esquerda (choice=A maior parte da mão coberta por bandagens)"
label(data$grip_lhlimitation___4)="Critérios de exclusão: limitações visíveis na mão esquerda (choice=Ausência do polegar ou dedos quebrados)"
label(data$grip_lhlimitation___5)="Critérios de exclusão: limitações visíveis na mão esquerda (choice=Outra limitação significativa {grip_lhlimitother})"
label(data$grip_lhlimitation___ni)="Critérios de exclusão: limitações visíveis na mão esquerda (choice=No information)"
label(data$grip_lhlimitation___unk)="Critérios de exclusão: limitações visíveis na mão esquerda (choice=Unknown)"
label(data$grip_lhlimitation___nask)="Critérios de exclusão: limitações visíveis na mão esquerda (choice=Not asked)"
label(data$grip_lhlimitation___asku)="Critérios de exclusão: limitações visíveis na mão esquerda (choice=Asked but unknown)"
label(data$grip_lhlimitation___inv)="Critérios de exclusão: limitações visíveis na mão esquerda (choice=Invalid)"
label(data$grip_lhlimitation___na)="Critérios de exclusão: limitações visíveis na mão esquerda (choice=Not applicable)"
label(data$griprecentsurgery)="2. Você fez alguma cirurgia nas mãos ou pulsos nos últimos 3 meses?"
label(data$grip_exclude)="3. Neste teste, iremos pedir para que você aperte o aparelho o mais forte que consiga. Existe algum motivo pelo qual você não poderia fazer o teste?"
label(data$grip_surgery)="Condições não excludentes: 1. Você já fez alguma cirurgia nas mãos ou nos pulsos devido a artrite ou síndrome do túnel do carpo?"
label(data$grip_dominance)="2. Você é destro, canhoto ou ambidestro"
label(data$grip_pain)="3. Você teve alguma dor, sensação de cansaço ou rigidez em alguma das mãos nos últimos 7 dias?"
label(data$grip_rhpain)="3.1 Mão direita:A dor, sensação de cansaço ou rigidez na sua mão direita é causada por artrite, tendinite ou síndrome do túnel do carpo?"
label(data$grip_lhpain)="3.1 Mão esquerda: A dor, sensação de cansaço ou rigidez na sua mão direita é causada por artrite, tendinite ou síndrome do túnel do carpo?"
label(data$grip_procedure)=" Conduzindo um teste prático  - Objetivo: garantir que o participante compreende como o teste será realizado - O teste NÃO deve ser realizado com força máxima - Realize o teste com a mão oposta àquela que será a primeira mão testada.Obs: Se apenas uma mão for elegível para o teste, o teste prático será realizado com essa mão, com um lembrete para aguardar 60 segundos antes de começar o teste. Utilize um cronômetro digital para garantir que aguarde 60 segundos antes de iniciar o teste. - Com o participante em pé, confirme a postura adequada:  Ficar em pé com os pés afastados na largura do quadril, alinhados e os dedos dos pés apontando para frente. Joelhos confortáveis, mas não dobrados. Ombros para trás e peito erguido. Cabeça nivelada. Olhos direcionados para frente. Braço ao lado do corpo com a palma da mão voltada para a perna. Nem o dinamômetro nem a mão devem tocar o corpo.  - Agora tente uma vez apenas para sentir como é. Para esse treino, aperte suavemente. Pronto, inspire, expire e aperte suavemente durante a expiração.  O teste foi realizado com sucesso e o participante entendeu as orientações? "
label(data$grip_rh1)="Mão direita: medida 1"
label(data$grip_rh1check)="Mão direita: validação 1"
label(data$gripsw_rh1)="Mão direita: stopwatch 1"
label(data$grip_lh1)="Mão esquerda: medida 1"
label(data$grip_lh1check)="Mão esquerda: validação 1"
label(data$gripsw_lh1)="Mão esquerda: stopwatch 1"
label(data$grip_rh2)="Mão direita: medida 2 "
label(data$grip_rh2check)="Mão direita: validação 2 "
label(data$gripsw_rh2)="Mão direita: stopwatch 2 "
label(data$grip_lh2)="Mão esquerda: medida 2 "
label(data$grip_lh2check)="Mão esquerda: validação 2 "
label(data$gripsw_lh2)="Mão esquerda: stopwatch 2"
label(data$grip_rh3)="Mão direita: medida 3 "
label(data$grip_rh3check)="Mão direita: validação 3 "
label(data$grip_lh3)="Mão esquerda: medida 3 "
label(data$grip_lh3check)="Mão esquerda: validação 3 "
label(data$grip_rhmean)="Média da mão direita (kg):"
label(data$grip_rhstdev)="Desvio padrão da mão direita:"
label(data$grip_lhmean)="Média da mão esquerda (kg):"
label(data$grip_lhstdev)="Desvio padrão da mão esquerda:"
label(data$grip_seemetadata)="Ver metadados?"
label(data$fora_de_preenso_palmar_complete)="Complete?"
label(data$habitointestinal)="Qual a frequência do seu hábito intestinal? "
label(data$consist_ncia)="Com que regularidade você tem evacuações com consistência firme? "
label(data$evacuacaoliquida)="Com que regularidade você tem evacuações líquidas ou soltas?"
label(data$constipacao)="Você já sofreu de constipação (dificuldade para evacuar)?  "
label(data$laxativos)="Com que frequência você precisa fazer uso de laxantes para estimular as evacuações?"
label(data$frequenciaurinaria)="Frequência urinária: "
label(data$ingestaohidrica)="Em relação à quantidade de água consumida durante o dia:"
label(data$quedadecabelo)="Você tem observado queda de cabelo recentemente? "
label(data$avaliao_nutricional_complete)="Complete?"
label(data$foodallergy)="Possui alergia e/ou intolerâncias alimentares?"
label(data$amendoim)="Alergia ao amendoim"
label(data$alergianozes)="Alergia às nozes (como castanhas, amêndoas, pistaches)"
label(data$alergiamar)="Alergia a frutos do mar (como camarão, caranguejo, lagosta)"
label(data$alergia_a_ovos)="Alergia a ovos"
label(data$intoler_ncia_a_lactose)="Alergia e/ou intolerância a laticínios"
label(data$alergia_ao_trigo_gl_ten_ce)="Alergia ao trigo/glúten (celíacos)"
label(data$lergia_soja)="Alergia à soja"
label(data$alergia_a_peixes_como_salm)="Alergia a peixes (como salmão, atum, bacalhau)"
label(data$alergia_alimentar_complete)="Complete?"
label(data$evs_days)="Script:Em média, em quantos dias por semana você realiza atividade física moderada a extenuante, como uma caminhada rápida?"
label(data$evs_time)="Script: Em média, por quantos minutos por dia você realiza atividade física neste nível?(expresso em minutos)"
label(data$evs_score)=" Escore EVS "
label(data$phy_activity_1)="Qual a atividade física principal realizada pelo participante?"
label(data$phy_activity_2)="O participante realiza alguma atividade física secundária?"
label(data$phy_activity_3)="O participante realiza alguma atividade física terciária?"
label(data$exercise_vital_sign_complete)="Complete?"
label(data$alcoholhistory)="O participante consome bebidas alcoólicas frequentemente?"
label(data$alcoholstoppedage)="Parou de beber há quantos anos?"
label(data$alcoholyears)="Há quantos anos o participante consome álcool?"
label(data$alcoholtype___1)="Tipo de bebida alcoólica consumida (choice=Cerveja)"
label(data$alcoholtype___2)="Tipo de bebida alcoólica consumida (choice=Vinho)"
label(data$alcoholtype___3)="Tipo de bebida alcoólica consumida (choice=Cachaça, whisky ou vodka)"
label(data$alcoholtype___9)="Tipo de bebida alcoólica consumida (choice=Outro (especificar))"
label(data$alcoholtype___ni)="Tipo de bebida alcoólica consumida (choice=No information)"
label(data$alcoholtype___unk)="Tipo de bebida alcoólica consumida (choice=Unknown)"
label(data$alcoholtype___nask)="Tipo de bebida alcoólica consumida (choice=Not asked)"
label(data$alcoholtype___asku)="Tipo de bebida alcoólica consumida (choice=Asked but unknown)"
label(data$alcoholtype___inv)="Tipo de bebida alcoólica consumida (choice=Invalid)"
label(data$alcoholtype___na)="Tipo de bebida alcoólica consumida (choice=Not applicable)"
label(data$beer)="Quantas latas por semana? (1 lata = 350 ml)"
label(data$beerdose)="Doses por semana"
label(data$wine)="Quantos ml por semana? (1 garrafa = 750 ml)"
label(data$winedose)="Doses por semana"
label(data$destilled)="Quantos ml por semana? (1 dose = 40 ml / 1 corote = 500 ml)"
label(data$destilleddose)="Doses por semana"
label(data$alcoholtypeother)="Outro (favor especificar)"
label(data$alcoholtypeotherdose)="Quantas doses por semana? (1 dose = 14g de álcool) "
label(data$alcoholtotal)="Consumo total de álcool por semana, expresso em doses (1 dose = 14g de etanol)"
label(data$alcoholsignificant)="Consumo significativo?1 = consumo significativo de álcool0 = consumo não significativo de álcool"
label(data$consumo_alcool_complete)="Complete?"
label(data$smokehistory)="Histórico de tabagismo: Fumou pelo menos 100 cigarros  (5 maços) durante a vida?"
label(data$smokeagestart)="Idade que começou a fumar (anos):"
label(data$smokeyears)="Número de anos em que fumou cigarros? (anos)"
label(data$cigarettesday)="Número médio de cigarros por dia?"
label(data$packyears)="Anos-maço"
label(data$smokeagequit)="Idade parou de fumar? (anos)"
label(data$consumo_tabaco_complete)="Complete?"
label(data$horario)="Horário: "
label(data$horario_2)="Horário: "
label(data$horario_3)="Horário: "
label(data$horario_4)="Horário: "
label(data$horario_5)="Horário: "
label(data$horario_6)="Horário: "
label(data$alimento)="Alimento:"
label(data$alimento_2)="Alimento:"
label(data$alimento_3)="Alimento:"
label(data$alimento_4)="Alimento:"
label(data$alimento_5)="Alimento:"
label(data$alimento_6)="Alimento:"
label(data$obs)="Observações: "
label(data$obs_2)="Observações: "
label(data$obs_4)="Observações: "
label(data$obs_3)="Observações: "
label(data$obs_5)="Observações: "
label(data$obs_6)="Observações: "
label(data$pdf_upload)="PDF upload "
label(data$recordatrio_alimentar_complete)="Complete?"
label(data$whatmeals___1)="Marque as refeições que o participante faz (choice=Café da manhã)"
label(data$whatmeals___2)="Marque as refeições que o participante faz (choice=Lanche da manhã)"
label(data$whatmeals___3)="Marque as refeições que o participante faz (choice=Almoço)"
label(data$whatmeals___4)="Marque as refeições que o participante faz (choice=Lanche da tarde)"
label(data$whatmeals___5)="Marque as refeições que o participante faz (choice=Jantar)"
label(data$whatmeals___6)="Marque as refeições que o participante faz (choice=Ceia)"
label(data$whatmeals___ni)="Marque as refeições que o participante faz (choice=No information)"
label(data$whatmeals___unk)="Marque as refeições que o participante faz (choice=Unknown)"
label(data$whatmeals___nask)="Marque as refeições que o participante faz (choice=Not asked)"
label(data$whatmeals___asku)="Marque as refeições que o participante faz (choice=Asked but unknown)"
label(data$whatmeals___inv)="Marque as refeições que o participante faz (choice=Invalid)"
label(data$whatmeals___na)="Marque as refeições que o participante faz (choice=Not applicable)"
label(data$totalkcal)="INGESTÃO CALÓRICA TOTAL (kcal):"
label(data$carboidratos_v2)="Carboidratos em gramas:"
label(data$kcal_cho_v2)="Kcal de CHO:"
label(data$kcal_ptn_v2)="Kcal de proteína:"
label(data$kcal_lip_v2)="Kcal de lipídeo:"
label(data$proteina_v2)="Proteínas em gramas: "
label(data$lipideos_v2)="Lipídeos em gramas:  "
label(data$gramascho_manha_v2)="Gramas Carboidrato manhã"
label(data$gramasptn_manha_v2)="Gramas proteina manha:"
label(data$gramaslip_manha_v2)="Gramas lipideos manha:"
label(data$gramaslip_lanchemanha_v2)="Gramas lipideos lanche da manha:"
label(data$gramascho_lanchemanha_v2)="Gramas carboidratos lanche da manha:"
label(data$gramasptn_lanchemanha_v2)="Gramas proteinas lanche da manha:"
label(data$gramascho_almoco_v2)="Gramas carboidratos almoço"
label(data$gramaslip_almoco_v2)="Gramas lipideos almoço"
label(data$gramasptn_almoco_v2)="Gramas proteinas almoço"
label(data$gramascho_tarde_v2)="Gramas carboidratos lanche da tarde:"
label(data$gramaslip_tarde_v2)="Gramas lipideos lanche da tarde:"
label(data$gramasptn_tarde_v2)="Gramas proteinas lanche da tarde:"
label(data$gramaslip_jantar_v2)="Gramas lipideos jantar:"
label(data$gramasptn_jantar_v2)="Gramas proteinas jantar:"
label(data$gramascho_jantar_v2)="Gramas carboidratos jantar:"
label(data$gramascho_lanchenoturno_v2)="Gramas carboidratos lanche noturno:"
label(data$gramaslip_lanchenoturno_v2)="Gramas lipideos lanche noturno:"
label(data$gramasptn_lanchenoturno_v2)="Gramas proteinas lanche noturno:"
label(data$kcalcho_manha_v2)="Carboidratos em calorias café da manhã"
label(data$kcalptn_manha_v2)="Proteinas em calorias café da manhã"
label(data$kcallip_manha_v2)="Lipídeos em calorias café da manhã"
label(data$kcaltotal_manha_v2)="Calorias totais café da manhã"
label(data$kcalcho_lanchemanha_v2)="Carboidratos em calorias lanche da manhã"
label(data$kcallip_lanchemanha_v2)="Lipídeos em calorias lanche da manhã"
label(data$kcalptn_lanchemanha_v2)="Proteínas em calorias lanche da manhã"
label(data$kcaltotal_lanchemanha_v2)="Calorias totais lanche da manhã"
label(data$kcaltotal_almoco_v2)="Calorias totais no almoço"
label(data$kcalcho_almoco_v2)="Carboidratos em calorias no almoço"
label(data$kcallip_almoco_v2)="Lipídeos em calorias no almoço"
label(data$kcalptn_almoco_v2)="Proteinas em calorias no almoço"
label(data$kcalcho_tarde_v2)="Carboidratos em calorias no lanche da tarde"
label(data$kcallip_tarde_v2)="Lipídeos em calorias no lanche da tarde"
label(data$kcalptn_tarde_v2)="Proteínas em calorias no lanche da tarde"
label(data$kcaltotal_tarde_v2)="Calorias totais no lanche da tarde"
label(data$kcalcho_jantar_v2)="Carboidratos em calorias no jantar"
label(data$kcalptn_jantar_v2)="Proteínas em calorias no jantar"
label(data$kcallip_jantar_v2)="Lipídeos em calorias no jantar"
label(data$kcaltotal_jantar_v2)="Calorias totais no jantar"
label(data$kcalcho_lanchenoturno_v2)="Carboidratos em calorias no lanche noturno"
label(data$kcalptn_lanchenoturno_v2)="Proteínas em calorias no lanche noturno"
label(data$kcallip_lanchenoturno_v2)="Lipídeos em calorias no lanche noturno"
label(data$kcaltotal_lanchenoturno_v2)="Calorias totais no lanche noturno"
label(data$nutriumpdf)="Adicione o PDF"
label(data$avaliao_da_ingesto_alimentar_complete)="Complete?"
label(data$c83129_yn)="O participante já iniciou o uso das cápsulas da intervenção designadas?"
label(data$visit1_schedule)="Data agendada 1visit"
label(data$wk_removealert)="Remover alerta semanal?"
label(data$c83129)="Data do início da intervenção"
label(data$date_45d)="Data que completa 45 dias"
label(data$visit2_schedule)="Data agendada 2ªV"
label(data$date_90d)="Data que completa 90 dias"
label(data$visit3_schedule)="Data agendada 3ªV"
label(data$link_datasimportantes)="@HIDDEN field containing link to form: datas importantes"
label(data$datas_importantes_complete)="Complete?"
label(data$c83083)="Identificador do participante"
label(data$c142660)="Random Allocation Group"
label(data$nmero_do_participante_complete)="Complete?"
label(data$comorbidity)="O participante [eleg_arm_1][record_id]relata ter alguma comorbidade?"
label(data$comorbidity_2)="Mais algum dado relevante?"
label(data$c16457)="Comorbidades mais comuns"
label(data$com_howlong)="Há quanto tempo foi feito o diagnóstico"
label(data$com_howlong2)="Unit of Time (Code C42574)    1 Year C29848   2 Day C25301   3 Month C29846   4 Week C29844   "
label(data$com_concat)="Comorbidades já listadas"
label(data$comorbidities_metadata)="Metadata (NCIT: C52095) All medical conditions and drug names are coded according to NCIT Ontology, version 23.06d (2023-06-26)"
label(data$comorbidades_complete)="Complete?"
label(data$medication)="O participante [eleg_arm_1][record_id]faz uso atual de algum medicamento?"
label(data$medication_2)="Mais algum dado relevante?"
label(data$c459)="Medicamentos mais comuns"
label(data$c64493)="Posologia"
label(data$drug_howlong)="Há quanto tempo utiliza o medicamento?"
label(data$drug_howlong_2)="Unit of Time (Code C42574)    1 Year C29848   2 Day C25301   3 Month C29846   4 Week C29844   "
label(data$drug_info)="@DEFAULT=un. por dose @HIDDEN"
label(data$drug_howmany)="Quantas unidades de Comp./Cáps. por dose"
label(data$drugs_concat)="Medicamentos já listados"
label(data$takes_other_medication)="Outros medicamentos em uso"
label(data$medications_metadata)="Metadata (NCIT: C52095) All medical conditions and drug names are coded according to NCIT Ontology, version 23.06d (2023-06-26)"
label(data$medicamentos_de_uso_habitual_complete)="Complete?"
label(data$medicationprevious)="O participante [eleg_arm_1][record_id] fazia uso de algum medicamento que foi suspenso ou abandonada?"
label(data$medicationprevious_2)="Mais algum dado relevante?"
label(data$c460)="Medicamentos mais comuns"
label(data$prev_drugs_info)="Iniciado há:"
label(data$c87865)="Há quanto tempo o medicamento foi iniciado?"
label(data$c87865_2)="Unit of Time (Code C42574)    1 Year C29848   2 Day C25301   3 Month C29846   4 Week C29844   "
label(data$prev_drugs_info_2)="Suspenso há"
label(data$c83047)="Há quanto tempo o medicamento foi suspenso?"
label(data$c83047_2)="Unit of Time (Code C42574)    1 Year C29848   2 Day C25301   3 Month C29846   4 Week C29844   "
label(data$previousdrugs_concat)="Medicamentos já listados"
label(data$other_medication)="Outros medicamentos"
label(data$medicamentos_prvios_complete)="Complete?"
label(data$medicalhistory)="O participante [eleg_arm_1][record_id]tem algum antecedente médico relevante?Cirurgias, internações, doenças graves"
label(data$medicalhistory_2)="Mais algum dado relevante?"
label(data$c16458)="Antecedentes mais comuns"
label(data$c18772)="Antecedentes Pessoais (NCIT)"
label(data$c18772_notes)="Antecedentes Pessoais (Notas)"
label(data$c65140)="Há quanto tempo?"
label(data$c65140_2)="Unit of Time (Code C42574)    1 Year C29848   2 Day C25301   3 Month C29846   4 Week C29844   "
label(data$pmh_concat)="Antecedentes já listados"
label(data$antecedentes_pessoais_complete)="Complete?"
label(data$c4876_yn)="O participante [eleg_arm_1][record_id] tem algum sintoma?"
label(data$c4876_yn_2)="Mais algum dado relevante?"
label(data$c4876_instance)="Instance number"
label(data$c4876)="Symptom (Code C4876)"
label(data$c25685)="Specify (Code C25685)"
label(data$c42619)="Note (Code C42619)"
label(data$info)="@DEFAULT=/ Onset: @HIDDEN  Used in concatenation "
label(data$c124353)="Symptom Onset (Code C124353)"
label(data$c124353_unitoftime)="Unit of Time (Code C42574)    1 Year C29848   2 Day C25301   3 Month C29846   4 Week C29844   "
label(data$info_2)="@DEFAULT=/ Severity: @HIDDEN  Used in concatenation "
label(data$c120071)="Severity of Symptom Likert Scale (Code C120071) A scale for the subjective scoring of symptoms that ranges from 0: Not Present to 10: As Bad as You Can Imagine."
label(data$info_3)="@DEFAULT=/ @HIDDEN  Used in concatenation "
label(data$c25471)="Current (Code C25471) Asks if the related symptom is current or has come to a resolution "
label(data$c178992)="Symptom Resolution Date (Code C178992)"
label(data$c178992_unitoftime)="Unit of Time (Code C42574)    1 Year C29848   2 Day C25301   3 Month C29846   4 Week C29844   "
label(data$info_4)="@IF([event-number] >= 2,@DEFAULT=/ Assessment of causality:,) @HIDDEN  Used in concatenation "
label(data$c41332)="   Existe possibilidade razoável de nexo causal com a intervenção?{c41332_link_ae}   "
label(data$sym_ncit_concat)="CONCAT"
label(data$sintomas_complete)="Complete?"
label(data$phyex_finding_yn)="O participante [eleg_arm_1][record_id] apresenta alguma alteração no exame físico?"
label(data$phyex_finding_yn_2)="Mais algum dado relevante?"
label(data$c25305_system)="System"
label(data$c87079)="       General Apperance       "
label(data$c163004)="       Oral ExaminationOral Cavity Finding (Code C60925)       "
label(data$c168436)="       Skin ExaminationIntegumentary System Finding (Code C36281)       "
label(data$c122008)="        Cardiovascular ExaminationCardiovascular System Finding (Code C35552)        "
label(data$c198356)="        Respiratory System ExaminationRespiratory System Finding (Code C45233)        "
label(data$c167415)="        Abdominal ExaminationDigestive System Finding (Code C36279)        "
label(data$c168189)="        Examination of Extremities        "
label(data$c83023)="Abnormal Finding Description (NCIT) "
label(data$c83023_notindexed)="Description of abnormal non-indexed findings ORAnnotations for indexed findings"
label(data$phyexam_concat)="Concatenates data collected from PREVIOUS instance"
label(data$phyexam_concat2)="Concatenated data from the variable: phyexam_concat, which means that it will collect all concatenated data from the current instance -2."
label(data$exame_fsico_complete)="Complete?"
label(data$lab_list_yn)="Mostrar a lista de exames a serem solicitados?"
label(data$lab_request_pdf_1)="Faça o upload do pedido assinado do exame"
label(data$lab_request_pdf_2)="Faça o upload do protocolo do pedido de exame em que constam data e local de coleta"
label(data$data_consulta_agendamento)="Data da consulta médica criada no RKM para agendamento dos exames laboratoriais"
label(data$eleg2_labrequest)="Data em que foi feita a solicitação dos exames laboratoriais:"
label(data$eleg2_labschedule)="Data agendada para coleta"
label(data$eleg2_whichlab)="Qual o local agendado para coleta?"
label(data$lab_coleta)="Data em que os exames foram efetivamente coletados"
label(data$c64548)="Proteína C Reativa (mg/L)"
label(data$c64467)="AST, Aspartato aminotransferase (U/L) / TGO, Transaminase Oxalacética  (U/L)"
label(data$c64433)="ALT, Alanina Aminotransferase (U/L) / TGP, Transaminase Pirúvica  (U/L)"
label(data$c64847)="Gama-glutamiltransferase (U/L)"
label(data$c64432)="Fosfatase alcalina (U/L)"
label(data$c38037)="Bilirrubina total (mg/dL)"
label(data$c64481)="Bilirrubina direta (mg/dL)"
label(data$c64483)="Bilirrubina indireta (mg/dL)"
label(data$c64434)="Amilase (U/L)"
label(data$c64858)="Proteínas totais (g/dL)"
label(data$c64431)="Albumina (g/dL)"
label(data$c64815)="Ureia (mg/dL)"
label(data$c61023)="Creatinina (mg/dL)"
label(data$c90505)="Taxa de filtração glomerular (mL/min/1.73m²)"
label(data$c64489)="CPK, Creatinofosfoquinase (U/L)"
label(data$c61034)="Ácido úrico (mg/dL)"
label(data$c61029)="Sódio (mEq/L)"
label(data$c61030)="Potássio (mEq/L)"
label(data$c81948)="Cálcio iônico (mmol/L"
label(data$c61032)="Colesterol total (mg/dL)"
label(data$c61042)="LDL (mg/dL)"
label(data$c64849)="Hemoglobina glicosilada A1c (%)"
label(data$c61037)="Triglicerídeos (mg/dL)"
label(data$c61041)="HDL (mg/dL)"
label(data$c61027)="Glicemia de jejum (mg/dL)"
label(data$c74788)="Insulina (uIU/mL); (uIU/mL x 7,17 = pmol/L)"
label(data$c100447)="HOMA-IR"
label(data$c123459)="QUICK < 0.34: Probable insulin resistense QUICKI = QUICK INDEX (Quantitative Insulin sensitivity Check Index) Insulin Sensitivity Measurement (Code C123459)"
label(data$c17479)="Beta-HCG"
label(data$c64848)="Hemoglobina (g/dL)"
label(data$c64796)="Hematócrito (%)"
label(data$c51948)="Leucócitos (×10³/mm³)"
label(data$c51951)="Plaquetas (×10³/mm³)"
label(data$c81295)="TSH (µIU/mL) "
label(data$c74786)="T4 livre Free Thyroxine Measurement (Code C74786)"
label(data$lab_pdf)="Anexe o arquivo em PDF do exame laboratorial"
label(data$other_lab_yn)="Outros exames relevantes OU anotações sobre os exames realizados"
label(data$other_lab)="Outros exames relevantes OU notas / comentários"
label(data$lab_chk)="Auditoria - resultados conferidos?"
label(data$lab_metadata)="Metadata (NCIT: C52095)All variable names are coded according to NCIT Ontology version 23.06d (2023-06-26)"
label(data$exames_laboratoriais_complete)="Complete?"
label(data$ecg_datetime)="Data e hora:"
label(data$ecg_done)="O exame foi realizado?"
label(data$ecg_notdone)="Reason for not performing ECG"
label(data$ecg_upload)="Faça o upload do arquivo em PDF do exame"
label(data$ecg_standard)="Padronização: Amplitude 10 mm/1 mV;Velocidade 25 mm/s"
label(data$c49677)="HR (Frequência cardíaca); bpm:"
label(data$sampletime)="Sample time (seg)"
label(data$c62087)="QRS Interval (Duração do segmento QRS), ms: "
label(data$c83502)="PR Interval (Duração do intervalo PR); ms:"
label(data$c83501)="QT Interval (Duração do intervalo QT), ms:"
label(data$c100391)="QTc interval (Duração do intervalo QTc), ms:"
label(data$c118165)="QRS axis (Eixo), graus:"
label(data$c87081)="Rhythm"
label(data$c168100___0)="ECG findings (choice=None)"
label(data$c168100___c62269)="ECG findings (choice=LBBB)"
label(data$c168100___c62270)="ECG findings (choice=RBBB)"
label(data$c168100___c26703)="ECG findings (choice=AV block)"
label(data$c168100___c71026)="ECG findings (choice=ST segment changes)"
label(data$c168100___c191644)="ECG findings (choice=Abnormal Q waves)"
label(data$c168100___c62271)="ECG findings (choice=Nonspecific intraventricular conduction delay)"
label(data$c168100___ni)="ECG findings (choice=No information)"
label(data$c168100___unk)="ECG findings (choice=Unknown)"
label(data$c168100___nask)="ECG findings (choice=Not asked)"
label(data$c168100___asku)="ECG findings (choice=Asked but unknown)"
label(data$c168100___inv)="ECG findings (choice=Invalid)"
label(data$c168100___na)="ECG findings (choice=Not applicable)"
label(data$ecg_prompt)="Prompt (copie e cole o conteúdo da caixa de texto no canto inferior direito da página do ECG)"
label(data$ecg_audit)="Auditoria dos dados (exclusivo para o pesquisador principal) Audit (NCIT: C45269)"
label(data$c117807)="ECG Technical Quality (NCIT: C117807)"
label(data$ecg_checked_yn)="Checked wave measurement on software?"
label(data$ecg_metadata_yn)="Ver metadados?"
label(data$eletrocardiograma_complete)="Complete?"
label(data$adhere_1)="Você tem tomado o medicamento do estudo conforme foi prescrito e orientado?"
label(data$adhere_2)="Como você toma o medicamento? Quantas cápsulas, em quais horários?"
label(data$adhere_2_2)="Outra forma de tomar a medicação (especifique)"
label(data$adhere_3)="Como você se lembra de tomar o medicamento? Você usa algum tipo de lembrete (alarmes, estojos de remédios, etc.)?"
label(data$adhere_3_3)="Outras formas de lembrete (especifique)"
label(data$adhere_4)="Você perdeu alguma dose do medicamento do estudo?"
label(data$adhere_4_1)="Quantas vezes você perdeu alguma dose do medicamento do estudo?"
label(data$adhere_4_2)="Em quais momentos você perdeu as dose do medicamento do estudo?"
label(data$adhere_4_3)="Outros momentos em que perdeu as doses (especificar)"
label(data$adhere_5)="Em algum momento durante o estudo, você parou de tomar o medicamento?"
label(data$adhere_5_1)="Se sim, por quantos dias?"
label(data$adhere_5_2)="Se sim, por quê?"
label(data$adhere_5_3)="Outra justificativa para ter parado a medicação (especificar)"
label(data$adhere_6)="Você já ficou sem o medicamento do estudo alguma vez porque as cápsulas acabaram antes de pegar a reposição?"
label(data$adhere_6_1)="Motivo para ter ficado sem o medicamento"
label(data$adhere_7)="Houve alguma mudança em sua rotina diária que pode afetar sua capacidade de tomar o medicamento de forma consistente?"
label(data$adhere_7_1)="Mudança na rotina que afeta a tomada (especificar)"
label(data$adhere_8)="Você está percebendo alguma melhoria em sua condição que atribui ao medicamento do estudo?"
label(data$adhere_8_1)="Especifique as melhorias relatadas (no caso de sintomas, inserir no instrumento específico)"
label(data$adhere_10)="Você está enfrentando algum desafio que atrapalha a tomada do medicamento?"
label(data$adhere_10_1)="Especifique os desafios que atrapalham na tomada"
label(data$adhere_11)="Em uma escala de 1 a 10, quão confiante você está em seguir o cronograma de medicamentos?"
label(data$adhere_12)="Como você classificaria sua adesão geral ao medicamento do estudo? (opções: ruim, regular, boa, excelente)"
label(data$adeso_complete)="Complete?"
label(data$ae_evaluation_date)="Adverse Event Evaluation Date"
label(data$ae_yes_no)="Algum Evento Adverso neste ciclo?"
label(data$sae)="Evento Adverso Grave? "
label(data$adverse_event)="Evento Adverso"
label(data$ae_description)="Descrição"
label(data$aes)="Classificação"
label(data$grade)="Grau"
label(data$start_date)="Início"
label(data$stop_date)="Término"
label(data$attribution)="Atribuição de causalidade"
label(data$action_taken)="Ação Realizada"
label(data$seguimento)="Seguimento"
label(data$additional_aes)="Eventos Adversos Adicionais?"
label(data$ae_concatenate)="Evento adverso"
label(data$eventos_adversos_complete)="Complete?"
label(data$md_date)="Data"
label(data$md_pipe_com)="Comorbidities"
label(data$bia_diuretic)="Faz uso de diurético?"
label(data$bia_dosechange)="Houve mudança na dose de diurético nos últimos 3 meses?"
label(data$md_pipe_drugs)="Medicações em uso atual"
label(data$md_pipe_prevdrugs)="Medicamentos utilizados previamente"
label(data$md_pipe_pmh)="Antecedentes Médicos"
label(data$bia_menses)="A participante menstrua?"
label(data$bia_mensesreg)="Ciclo menstrual regular?"
label(data$bia_cycleduration)="Duração do ciclo menstrual (O ciclo menstrual tem uma duração média de 28 dias)"
label(data$bia_lastmenses)="Data da última menstruação"
label(data$bia_ovulation_1)="Nº de dias depois da DUM que a pessoa vai ovular"
label(data$bia_ovulationdate)="Data da próxima ovulação"
label(data$bia_nextmenses)="Data da próxima menstruação"
label(data$bia_menstrualcy)="Fase do ciclo menstrual"
label(data$md_drugs)="Alguma mudança nos MEU ou dosagem?"
label(data$md_drugs_note)="Notas"
label(data$md_pipesym1st)="Piping sintomas 1ª visita"
label(data$md_pipesym2nd)="Piping sintomas 2ª visita"
label(data$md_pipesym3rd)="Piping sintomas 3ª visita"
label(data$phy_exam_1st)="Exame físico 1ª visita, concatenação das variáveis: phyexam_concat e phyexam_concat2"
label(data$phy_exam_2nd)="Exame físico 2ª visita, concatenação das variáveis: phyexam_concat e phyexam_concat2"
label(data$phy_exam_3rd)="Exame físico 3ª visita, concatenação das variáveis: phyexam_concat e phyexam_concat2"
label(data$md_show_pipelab)="Show lab?"
label(data$md_labs)="Algum exame de laboratório para checar nesta visita?"
label(data$md_labswhynot)="Por que não?"
label(data$md_labs_chked)="Exames checados?"
label(data$md_labs_find)="Algum achado anormal?"
label(data$md_labs_find_mng)="Notas e conduta em relação a achados laboratoriais anormais"
label(data$md_bottle)="Algum motivo impede uso da intervenção?"
label(data$md_reasonwhynot)="Specify reasons preventing delivery of the medication?"
label(data$md_deliver)="Intervenção entregue ao paciente?"
label(data$md_deliver_no)="Explique o motivo"
label(data$md_deliver_date)="Data de entrega da intervenção"
label(data$md_explain)="Explicado sobre a forma correta de uso?"
label(data$md_explainchk)="Participante tem total compreensão sobre o uso?"
label(data$md_understand_no)="Notas"
label(data$c133396)="Data prevista para o início do uso das cápsulas {c133396_note}"
label(data$c133396_note)="Data prevista para o início do uso das cápsulas"
label(data$c133396_labsdelay)="O início da intervenção está programado para após a coleta dos exames laboratoriais?"
label(data$md_mng_yn)="Outras notas / condutas?"
label(data$md_mng)="Outras notas ou condutas"
label(data$avaliao_mdica_complete)="Complete?"
label(data$contato_semanal_timestamp)="Survey Timestamp"
label(data$wk_isform)="Detects if the current instrument is being viewed as a data entry form (returns 1 for True, 0 for False),"
label(data$wk_interviewer)="Entrevistador"
label(data$wk_datetime1)="{wk_interviewer}Data e hora da primeira tentativa de contato: Contato bem sucedido? {wk_datetime1_yn}"
label(data$wk_datetime1_yn)="Contato bem sucedido?"
label(data$wk_datetime2)="Data e hora da segunda tentativa de contato: Contato bem sucedido? {wk_datetime2_yn}"
label(data$wk_datetime2_yn)="Contato bem sucedido?"
label(data$wk_datetime3)="Data e hora da terceira tentativa de contato: Contato bem sucedido? {wk_datetime3_yn}"
label(data$wk_datetime3_yn)="Contato bem sucedido?"
label(data$wk_datetime4)="Data e hora da quarta tentativa de contato: Contato bem sucedido? {wk_datetime4_yn}"
label(data$wk_datetime4_yn)="Contato bem sucedido?"
label(data$wk_datetime5)="Data e hora da quintatentativa de contato: Contato bem sucedido? {wk_datetime5_yn}"
label(data$wk_datetime5_yn)="Contato bem sucedido?"
label(data$wk_datetime6)="Data e hora da sexta tentativa de contato: Contato bem sucedido? {wk_datetime6_yn}"
label(data$wk_datetime6_yn)="Contato bem sucedido?"
label(data$wk_datetime7)="Data e hora da sétima tentativa de contato: Contato bem sucedido? {wk_datetime7_yn}"
label(data$wk_datetime7_yn)="Contato bem sucedido?"
label(data$wk_datetime8)="Data e hora da oitava tentativa de contato: Contato bem sucedido? {wk_datetime8_yn}"
label(data$wk_datetime8_yn)="Contato bem sucedido?"
label(data$wk_datetime9)="Data e hora da nona tentativa de contato: Contato bem sucedido? {wk_datetime9_yn}"
label(data$wk_datetime9_yn)="Contato bem sucedido?"
label(data$wk_datetime10)="Data e hora da décima tentativa de contato: Contato bem sucedido? {wk_datetime10_yn}"
label(data$wk_datetime10_yn)="Contato bem sucedido?"
label(data$wk_safety)="Desde quando você começou a tomar as cápsulas, você teve algum sintoma novo que acredita que pode estar associado ao tratamento?"
label(data$wk_symptoms_note)="Por favor, descreva quais sintomas você teve"
label(data$wk_info1)="@DEFAULT=/ Início (dias):@HIDDENUsed in concatenation"
label(data$wk_start)="Os sintomas começaram há quantos dias?"
label(data$wk_info)="@DEFAULT=/ Severity: @HIDDEN  Used in concatenation "
label(data$wk_c120071)="Quanto os sintomas te incomodam em uma escala de 0 a 10?"
label(data$wk_c25471)="Os sintomas já se resolveram?"
label(data$wk_info_2)="@DEFAULT= há (dias): @HIDDEN  Used in concatenation "
label(data$wk_c178992)="Os sintomas se resolveram há quantos dias?"
label(data$wk_adherence)="Você tem tomado as cápsulas como foi orientado? (2 cápsulas no café da manhã, 2 no almoço e 2 no jantar, totalizando 6 cápsulas ao dia)"
label(data$wk_lostdose)="Na última semana você esqueceu alguma dose?"
label(data$wk_adherence_whyno)="Por que não?"
label(data$wk_question_yn)="Você tem alguma dúvida?"
label(data$wk_question_note)="Especifique as dúvidas"
label(data$wk_question_chk)="Dúvidas esclarecidas?"
label(data$pdf_survey)="PDF Upload of Survey Response"
label(data$contato_semanal_complete)="Complete?"
label(data$c25250)="O participante completou os 3 meses de intervenção?"
label(data$conclusion_date)="Data da Conclusão"
label(data$c66727)="Motivo da não conclusão"
label(data$conclusion_info)="   Ver explicações?    "
label(data$c66727_detail)="Detalhe:"
label(data$c66727_action)="Existe necessidade de alguma medida ética adicional?"
label(data$c66727_response)="Informações sobre medidas éticas adicionais"
label(data$concluso_complete)="Complete?"
label(data$attach_insertiondate)="Data em que está sendo inserido o arquivo"
label(data$attachment_type)="Selecione o tipo de anexo"
label(data$attach_filedate)="Data do documento"
label(data$attachment_other)="Especifique"
label(data$attachment_file)="Selecione o arquivo"
label(data$attachment_notes)="Data do documento {attachment_date} Selecione o arquivo para upload: {attachment_file}"
label(data$anexos_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$redcap_event_name.factor = factor(data$redcap_event_name,levels=c("eleg_arm_1","1visit_arm_1","2visit_arm_1","3visit_arm_1"))
data$redcap_repeat_instrument.factor = factor(data$redcap_repeat_instrument,levels=c("sintomas","exame_fsico","exames_laboratoriais","adeso","eventos_adversos","contato_semanal","comorbidades","medicamentos_de_uso_habitual","medicamentos_prvios","antecedentes_pessoais","anexos"))
data$ubs.factor = factor(data$ubs,levels=c("1","2","3","4","5","6","7","8"))
data$mob_option.factor = factor(data$mob_option,levels=c("1","2","3","4","5"))
data$mob_hour.factor = factor(data$mob_hour,levels=c("1","2","3","4","5","6"))
data$mob_days.factor = factor(data$mob_days,levels=c("1","2","3"))
data$eleg_transport.factor = factor(data$eleg_transport,levels=c("1","2","3"))
data$eleg_howknow.factor = factor(data$eleg_howknow,levels=c("1","2","3","4","5","6"))
data$availability_limit_yn.factor = factor(data$availability_limit_yn,levels=c("0","1"))
data$sex.factor = factor(data$sex,levels=c("1","0"))
data$eleg_preg_yn.factor = factor(data$eleg_preg_yn,levels=c("0","1"))
data$eleg_com_yn.factor = factor(data$eleg_com_yn,levels=c("0","1"))
data$eleg_drugs_yn.factor = factor(data$eleg_drugs_yn,levels=c("0","1"))
data$eleg_fem_high___1.factor = factor(data$eleg_fem_high___1,levels=c("0","1"))
data$eleg_fem_high___2.factor = factor(data$eleg_fem_high___2,levels=c("0","1"))
data$eleg_fem_high___3.factor = factor(data$eleg_fem_high___3,levels=c("0","1"))
data$eleg_fem_high___4.factor = factor(data$eleg_fem_high___4,levels=c("0","1"))
data$eleg_fem_high___5.factor = factor(data$eleg_fem_high___5,levels=c("0","1"))
data$eleg_fem_high___0.factor = factor(data$eleg_fem_high___0,levels=c("0","1"))
data$eleg_fem_high___ni.factor = factor(data$eleg_fem_high___ni,levels=c("0","1"))
data$eleg_fem_high___unk.factor = factor(data$eleg_fem_high___unk,levels=c("0","1"))
data$eleg_fem_high___nask.factor = factor(data$eleg_fem_high___nask,levels=c("0","1"))
data$eleg_fem_high___asku.factor = factor(data$eleg_fem_high___asku,levels=c("0","1"))
data$eleg_fem_high___inv.factor = factor(data$eleg_fem_high___inv,levels=c("0","1"))
data$eleg_fem_high___na.factor = factor(data$eleg_fem_high___na,levels=c("0","1"))
data$eleg_femhigh_yn.factor = factor(data$eleg_femhigh_yn,levels=c("0","1"))
data$eleg_fem_low___1.factor = factor(data$eleg_fem_low___1,levels=c("0","1"))
data$eleg_fem_low___2.factor = factor(data$eleg_fem_low___2,levels=c("0","1"))
data$eleg_fem_low___3.factor = factor(data$eleg_fem_low___3,levels=c("0","1"))
data$eleg_fem_low___4.factor = factor(data$eleg_fem_low___4,levels=c("0","1"))
data$eleg_fem_low___5.factor = factor(data$eleg_fem_low___5,levels=c("0","1"))
data$eleg_fem_low___6.factor = factor(data$eleg_fem_low___6,levels=c("0","1"))
data$eleg_fem_low___7.factor = factor(data$eleg_fem_low___7,levels=c("0","1"))
data$eleg_fem_low___ni.factor = factor(data$eleg_fem_low___ni,levels=c("0","1"))
data$eleg_fem_low___unk.factor = factor(data$eleg_fem_low___unk,levels=c("0","1"))
data$eleg_fem_low___nask.factor = factor(data$eleg_fem_low___nask,levels=c("0","1"))
data$eleg_fem_low___asku.factor = factor(data$eleg_fem_low___asku,levels=c("0","1"))
data$eleg_fem_low___inv.factor = factor(data$eleg_fem_low___inv,levels=c("0","1"))
data$eleg_fem_low___na.factor = factor(data$eleg_fem_low___na,levels=c("0","1"))
data$eleg_fem_low_1.factor = factor(data$eleg_fem_low_1,levels=c("0","1"))
data$eleg2_whichlab_2.factor = factor(data$eleg2_whichlab_2,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$eleg2_labcollect.factor = factor(data$eleg2_labcollect,levels=c("0","1"))
data$eleg2_labchecked.factor = factor(data$eleg2_labchecked,levels=c("0","1"))
data$eleg2_labfinding.factor = factor(data$eleg2_labfinding,levels=c("0","1"))
data$eleg2_labex.factor = factor(data$eleg2_labex,levels=c("0","1"))
data$eleg2_bhcg.factor = factor(data$eleg2_bhcg,levels=c("0","1","99"))
data$normalcycle.factor = factor(data$normalcycle,levels=c("0","1"))
data$contraception_ok.factor = factor(data$contraception_ok,levels=c("0","1"))
data$tcle_sent.factor = factor(data$tcle_sent,levels=c("0","1"))
data$tcle_read.factor = factor(data$tcle_read,levels=c("0","1"))
data$tcle_questions.factor = factor(data$tcle_questions,levels=c("0","1"))
data$tcle_questions_3.factor = factor(data$tcle_questions_3,levels=c("0","1"))
data$desire_ok_2.factor = factor(data$desire_ok_2,levels=c("0","1"))
data$sms_agree.factor = factor(data$sms_agree,levels=c("0","1"))
data$block_alerts_1st.factor = factor(data$block_alerts_1st,levels=c("0","1"))
data$elegibilidade_complete.factor = factor(data$elegibilidade_complete,levels=c("0","1","2"))
data$consent_c16735_yn.factor = factor(data$consent_c16735_yn,levels=c("0","1"))
data$tcle_complete.factor = factor(data$tcle_complete,levels=c("0","1","2"))
data$race.factor = factor(data$race,levels=c("c41260","c41261","c128994","c16352","c17998","c17649"))
data$maritalstatus.factor = factor(data$maritalstatus,levels=c("c51776","c53262","c51773","c51774","c156541","c51775"))
data$employment.factor = factor(data$employment,levels=c("c52658","c75563","c75562"))
data$income.factor = factor(data$income,levels=c("1","2","3","4","5"))
data$dados_demogrficos_complete.factor = factor(data$dados_demogrficos_complete,levels=c("0","1","2"))
data$wb_1.factor = factor(data$wb_1,levels=c("1","2","3","4","5"))
data$wb_2.factor = factor(data$wb_2,levels=c("1","2","3","4","5"))
data$wb_3.factor = factor(data$wb_3,levels=c("1","2","3","4","5"))
data$wb_4.factor = factor(data$wb_4,levels=c("1","2","3","4","5"))
data$wb_5.factor = factor(data$wb_5,levels=c("1","2","3","4","5"))
data$wb_6.factor = factor(data$wb_6,levels=c("1","2","3","4","5"))
data$wb_7.factor = factor(data$wb_7,levels=c("1","2","3","4","5"))
data$wb_8.factor = factor(data$wb_8,levels=c("1","2","3","4","5"))
data$wb_9.factor = factor(data$wb_9,levels=c("1","2","3","4","5"))
data$wb_10.factor = factor(data$wb_10,levels=c("1","2","3","4","5"))
data$wb_11.factor = factor(data$wb_11,levels=c("1","2","3","4","5"))
data$wb_12.factor = factor(data$wb_12,levels=c("1","2","3","4","5"))
data$wb_13.factor = factor(data$wb_13,levels=c("1","2","3","4","5"))
data$wb_14.factor = factor(data$wb_14,levels=c("1","2","3","4","5"))
data$wb_15.factor = factor(data$wb_15,levels=c("1","2","3","4","5"))
data$wb_16.factor = factor(data$wb_16,levels=c("1","2","3","4","5"))
data$wb_17.factor = factor(data$wb_17,levels=c("1","2","3","4","5"))
data$wb_18.factor = factor(data$wb_18,levels=c("1","2","3","4","5"))
data$wb_19.factor = factor(data$wb_19,levels=c("1","2","3","4","5"))
data$wb_20.factor = factor(data$wb_20,levels=c("1","2","3","4","5"))
data$wb_21.factor = factor(data$wb_21,levels=c("1","2","3","4","5"))
data$wb_22.factor = factor(data$wb_22,levels=c("1","2","3","4","5"))
data$wb_23.factor = factor(data$wb_23,levels=c("1","2","3","4","5"))
data$wb_24.factor = factor(data$wb_24,levels=c("1","2","3","4","5"))
data$wb_25.factor = factor(data$wb_25,levels=c("1","2","3","4","5"))
data$wb_26.factor = factor(data$wb_26,levels=c("1","2","3","4","5"))
data$whoqol_how.factor = factor(data$whoqol_how,levels=c("0","1","99"))
data$questionrio_qualidade_de_vida_complete.factor = factor(data$questionrio_qualidade_de_vida_complete,levels=c("0","1","2"))
data$dass21_1.factor = factor(data$dass21_1,levels=c("0","1","2","3"))
data$dass21_2.factor = factor(data$dass21_2,levels=c("0","1","2","3"))
data$dass21_3.factor = factor(data$dass21_3,levels=c("0","1","2","3"))
data$dass21_4.factor = factor(data$dass21_4,levels=c("0","1","2","3"))
data$dass21_5.factor = factor(data$dass21_5,levels=c("0","1","2","3"))
data$dass21_6.factor = factor(data$dass21_6,levels=c("0","1","2","3"))
data$dass21_7.factor = factor(data$dass21_7,levels=c("0","1","2","3"))
data$dass21_8.factor = factor(data$dass21_8,levels=c("0","1","2","3"))
data$dass21_9.factor = factor(data$dass21_9,levels=c("0","1","2","3"))
data$dass21_10.factor = factor(data$dass21_10,levels=c("0","1","2","3"))
data$dass21_11.factor = factor(data$dass21_11,levels=c("0","1","2","3"))
data$dass21_12.factor = factor(data$dass21_12,levels=c("0","1","2","3"))
data$dass21_13.factor = factor(data$dass21_13,levels=c("0","1","2","3"))
data$dass21_14.factor = factor(data$dass21_14,levels=c("0","1","2","3"))
data$dass21_15.factor = factor(data$dass21_15,levels=c("0","1","2","3"))
data$dass21_16.factor = factor(data$dass21_16,levels=c("0","1","2","3"))
data$dass21_17.factor = factor(data$dass21_17,levels=c("0","1","2","3"))
data$dass21_18.factor = factor(data$dass21_18,levels=c("0","1","2","3"))
data$dass21_19.factor = factor(data$dass21_19,levels=c("0","1","2","3"))
data$dass21_20.factor = factor(data$dass21_20,levels=c("0","1","2","3"))
data$dass21_21.factor = factor(data$dass21_21,levels=c("0","1","2","3"))
data$escore_de_depresso_ansiedade_e_estresse_complete.factor = factor(data$escore_de_depresso_ansiedade_e_estresse_complete,levels=c("0","1","2"))
data$ecap1.factor = factor(data$ecap1,levels=c("1","2","3","4"))
data$ecap2.factor = factor(data$ecap2,levels=c("1","2","3","4"))
data$ecap3.factor = factor(data$ecap3,levels=c("1","2","3","4"))
data$ecap4.factor = factor(data$ecap4,levels=c("1","2","3","4"))
data$ecap5.factor = factor(data$ecap5,levels=c("1","2","3","4"))
data$ecap6.factor = factor(data$ecap6,levels=c("1","2","3"))
data$ecap7.factor = factor(data$ecap7,levels=c("1","2","3","4"))
data$ecap8.factor = factor(data$ecap8,levels=c("1","2","3","4"))
data$ecap9.factor = factor(data$ecap9,levels=c("1","2","3","4"))
data$ecap10.factor = factor(data$ecap10,levels=c("1","2","3","4"))
data$ecap11.factor = factor(data$ecap11,levels=c("1","2","3","4"))
data$ecap12.factor = factor(data$ecap12,levels=c("1","2","3","4"))
data$ecap13.factor = factor(data$ecap13,levels=c("1","2","3","4"))
data$ecap14.factor = factor(data$ecap14,levels=c("1","2","3","4"))
data$ecap15.factor = factor(data$ecap15,levels=c("1","2","3","4"))
data$ecap16.factor = factor(data$ecap16,levels=c("1","2","3"))
data$escala_de_compulso_alimentar_complete.factor = factor(data$escala_de_compulso_alimentar_complete,levels=c("0","1","2"))
data$antropometria_complete.factor = factor(data$antropometria_complete,levels=c("0","1","2"))
data$presso_arterial_determinao_do_membro_de_referncia_complete.factor = factor(data$presso_arterial_determinao_do_membro_de_referncia_complete,levels=c("0","1","2"))
data$bp_showmetadata.factor = factor(data$bp_showmetadata,levels=c("0","1"))
data$presso_arterial_complete.factor = factor(data$presso_arterial_complete,levels=c("0","1","2"))
data$bia_tobacco.factor = factor(data$bia_tobacco,levels=c("0","1"))
data$bia_phact.factor = factor(data$bia_phact,levels=c("0","1"))
data$bia_alcohol.factor = factor(data$bia_alcohol,levels=c("0","1"))
data$bia_ambtemp.factor = factor(data$bia_ambtemp,levels=c("0","1"))
data$bia_clothes.factor = factor(data$bia_clothes,levels=c("0","1"))
data$bia_objects.factor = factor(data$bia_objects,levels=c("0","1"))
data$bia_hair.factor = factor(data$bia_hair,levels=c("0","1"))
data$bia_hair_rem.factor = factor(data$bia_hair_rem,levels=c("0","1"))
data$bia_cleaning.factor = factor(data$bia_cleaning,levels=c("0","1"))
data$bia_decubitus.factor = factor(data$bia_decubitus,levels=c("0","1"))
data$bia_showmetadata.factor = factor(data$bia_showmetadata,levels=c("0","1"))
data$impedncia_bioeltrica_corporal_complete.factor = factor(data$impedncia_bioeltrica_corporal_complete,levels=c("0","1","2"))
data$grip_limitations.factor = factor(data$grip_limitations,levels=c("0","1"))
data$grip_rhlimitation.factor = factor(data$grip_rhlimitation,levels=c("0","1","2","3","4","5"))
data$grip_lhlimitation___0.factor = factor(data$grip_lhlimitation___0,levels=c("0","1"))
data$grip_lhlimitation___1.factor = factor(data$grip_lhlimitation___1,levels=c("0","1"))
data$grip_lhlimitation___2.factor = factor(data$grip_lhlimitation___2,levels=c("0","1"))
data$grip_lhlimitation___3.factor = factor(data$grip_lhlimitation___3,levels=c("0","1"))
data$grip_lhlimitation___4.factor = factor(data$grip_lhlimitation___4,levels=c("0","1"))
data$grip_lhlimitation___5.factor = factor(data$grip_lhlimitation___5,levels=c("0","1"))
data$grip_lhlimitation___ni.factor = factor(data$grip_lhlimitation___ni,levels=c("0","1"))
data$grip_lhlimitation___unk.factor = factor(data$grip_lhlimitation___unk,levels=c("0","1"))
data$grip_lhlimitation___nask.factor = factor(data$grip_lhlimitation___nask,levels=c("0","1"))
data$grip_lhlimitation___asku.factor = factor(data$grip_lhlimitation___asku,levels=c("0","1"))
data$grip_lhlimitation___inv.factor = factor(data$grip_lhlimitation___inv,levels=c("0","1"))
data$grip_lhlimitation___na.factor = factor(data$grip_lhlimitation___na,levels=c("0","1"))
data$griprecentsurgery.factor = factor(data$griprecentsurgery,levels=c("0","1","2"))
data$grip_exclude.factor = factor(data$grip_exclude,levels=c("0","1","2","3"))
data$grip_surgery.factor = factor(data$grip_surgery,levels=c("0","1","2","3"))
data$grip_dominance.factor = factor(data$grip_dominance,levels=c("1","2","3"))
data$grip_pain.factor = factor(data$grip_pain,levels=c("0","1","2","3"))
data$grip_rhpain.factor = factor(data$grip_rhpain,levels=c("0","1"))
data$grip_lhpain.factor = factor(data$grip_lhpain,levels=c("0","1"))
data$grip_procedure.factor = factor(data$grip_procedure,levels=c("0","1"))
data$grip_seemetadata.factor = factor(data$grip_seemetadata,levels=c("0","1"))
data$fora_de_preenso_palmar_complete.factor = factor(data$fora_de_preenso_palmar_complete,levels=c("0","1","2"))
data$habitointestinal.factor = factor(data$habitointestinal,levels=c("c25473","c64525","c64528","c118853"))
data$consist_ncia.factor = factor(data$consist_ncia,levels=c("c70670","c110991","c73116","c70543"))
data$evacuacaoliquida.factor = factor(data$evacuacaoliquida,levels=c("c70543","c73116","c64649","c70670"))
data$constipacao.factor = factor(data$constipacao,levels=c("c49488","c49487"))
data$laxativos.factor = factor(data$laxativos,levels=c("c70543","c73116","c25473","c67069","c64498"))
data$frequenciaurinaria.factor = factor(data$frequenciaurinaria,levels=c("c102843","c16413","c25640"))
data$ingestaohidrica.factor = factor(data$ingestaohidrica,levels=c("c102843","c16413","c25640"))
data$quedadecabelo.factor = factor(data$quedadecabelo,levels=c("c70543","c129476","c129475","c129474","c129473"))
data$avaliao_nutricional_complete.factor = factor(data$avaliao_nutricional_complete,levels=c("0","1","2"))
data$foodallergy.factor = factor(data$foodallergy,levels=c("c49488","c49487"))
data$amendoim.factor = factor(data$amendoim,levels=c("c49488","c49487"))
data$alergianozes.factor = factor(data$alergianozes,levels=c("c49488","c49487"))
data$alergiamar.factor = factor(data$alergiamar,levels=c("c49488","c49487"))
data$alergia_a_ovos.factor = factor(data$alergia_a_ovos,levels=c("c49488","c49487"))
data$intoler_ncia_a_lactose.factor = factor(data$intoler_ncia_a_lactose,levels=c("c49488","c49487"))
data$alergia_ao_trigo_gl_ten_ce.factor = factor(data$alergia_ao_trigo_gl_ten_ce,levels=c("c49488","c49487"))
data$lergia_soja.factor = factor(data$lergia_soja,levels=c("c49488","c49487"))
data$alergia_a_peixes_como_salm.factor = factor(data$alergia_a_peixes_como_salm,levels=c("c49488","c49487"))
data$alergia_alimentar_complete.factor = factor(data$alergia_alimentar_complete,levels=c("0","1","2"))
data$evs_days.factor = factor(data$evs_days,levels=c("0","1","2","3","4","5","6","7"))
data$evs_time.factor = factor(data$evs_time,levels=c("0","10","20","30","40","50","60","90","120","150"))
data$phy_activity_1.factor = factor(data$phy_activity_1,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21"))
data$phy_activity_2.factor = factor(data$phy_activity_2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21"))
data$phy_activity_3.factor = factor(data$phy_activity_3,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21"))
data$exercise_vital_sign_complete.factor = factor(data$exercise_vital_sign_complete,levels=c("0","1","2"))
data$alcoholhistory.factor = factor(data$alcoholhistory,levels=c("0","1","3","4","5"))
data$alcoholstoppedage.factor = factor(data$alcoholstoppedage,levels=c("1","2","3","4","5"))
data$alcoholyears.factor = factor(data$alcoholyears,levels=c("1","2","3","4","5"))
data$alcoholtype___1.factor = factor(data$alcoholtype___1,levels=c("0","1"))
data$alcoholtype___2.factor = factor(data$alcoholtype___2,levels=c("0","1"))
data$alcoholtype___3.factor = factor(data$alcoholtype___3,levels=c("0","1"))
data$alcoholtype___9.factor = factor(data$alcoholtype___9,levels=c("0","1"))
data$alcoholtype___ni.factor = factor(data$alcoholtype___ni,levels=c("0","1"))
data$alcoholtype___unk.factor = factor(data$alcoholtype___unk,levels=c("0","1"))
data$alcoholtype___nask.factor = factor(data$alcoholtype___nask,levels=c("0","1"))
data$alcoholtype___asku.factor = factor(data$alcoholtype___asku,levels=c("0","1"))
data$alcoholtype___inv.factor = factor(data$alcoholtype___inv,levels=c("0","1"))
data$alcoholtype___na.factor = factor(data$alcoholtype___na,levels=c("0","1"))
data$consumo_alcool_complete.factor = factor(data$consumo_alcool_complete,levels=c("0","1","2"))
data$smokehistory.factor = factor(data$smokehistory,levels=c("0","1","2"))
data$consumo_tabaco_complete.factor = factor(data$consumo_tabaco_complete,levels=c("0","1","2"))
data$recordatrio_alimentar_complete.factor = factor(data$recordatrio_alimentar_complete,levels=c("0","1","2"))
data$whatmeals___1.factor = factor(data$whatmeals___1,levels=c("0","1"))
data$whatmeals___2.factor = factor(data$whatmeals___2,levels=c("0","1"))
data$whatmeals___3.factor = factor(data$whatmeals___3,levels=c("0","1"))
data$whatmeals___4.factor = factor(data$whatmeals___4,levels=c("0","1"))
data$whatmeals___5.factor = factor(data$whatmeals___5,levels=c("0","1"))
data$whatmeals___6.factor = factor(data$whatmeals___6,levels=c("0","1"))
data$whatmeals___ni.factor = factor(data$whatmeals___ni,levels=c("0","1"))
data$whatmeals___unk.factor = factor(data$whatmeals___unk,levels=c("0","1"))
data$whatmeals___nask.factor = factor(data$whatmeals___nask,levels=c("0","1"))
data$whatmeals___asku.factor = factor(data$whatmeals___asku,levels=c("0","1"))
data$whatmeals___inv.factor = factor(data$whatmeals___inv,levels=c("0","1"))
data$whatmeals___na.factor = factor(data$whatmeals___na,levels=c("0","1"))
data$avaliao_da_ingesto_alimentar_complete.factor = factor(data$avaliao_da_ingesto_alimentar_complete,levels=c("0","1","2"))
data$c83129_yn.factor = factor(data$c83129_yn,levels=c("0","1"))
data$wk_removealert.factor = factor(data$wk_removealert,levels=c("0","1"))
data$datas_importantes_complete.factor = factor(data$datas_importantes_complete,levels=c("0","1","2"))
data$c142660.factor = factor(data$c142660,levels=c("1","2"))
data$nmero_do_participante_complete.factor = factor(data$nmero_do_participante_complete,levels=c("0","1","2"))
data$comorbidity.factor = factor(data$comorbidity,levels=c("0","1"))
data$comorbidity_2.factor = factor(data$comorbidity_2,levels=c("0","1"))
data$c16457.factor = factor(data$c16457,levels=c("C3390","C6996","C2869","C26696","C35145","C2884","C3318","C28397","C26722","C52593","C9305","C2920","C34449","C26713","C122822","C97162","C4786","C2982","C26747","C2987","C63709","C4922","C26732","C2866","C2965","C3071","C26845","C26781","C113609","C84444","C3138","C3889","C164315","C3199","C80078","C2931","C41830","C3001","C26862","C89715","C3020","C2891","C3243","C9224","C3362","C79821","C50466","C87497","C26780","C26782","C26785","C34650","C98945","C39293","C26792","C37967","C3117","C197871","C3123","C37971","C3961","C84774","C26800","C3014","C50791","C35650","C35158","C28286","C3080","C127822","C3201","C26975","C3434","C3161","C3207","C34797","C26828","C2983","C4345","C3293","C50910","C3298","C128386","C3306","C84637","C35326","C123216","C3336","C26930","C3346","C114476","C113101","C2952","C79532","C27168","C26883","C26900","C61283","C82343","C114667","C35151","C97141","C34423","C97160","C88412","C88411","C3407","C3423","C3108"))
data$com_howlong2.factor = factor(data$com_howlong2,levels=c("1","2","3","4"))
data$comorbidades_complete.factor = factor(data$comorbidades_complete,levels=c("0","1","2"))
data$medication.factor = factor(data$medication,levels=c("0","1"))
data$medication_2.factor = factor(data$medication_2,levels=c("0","1"))
data$c459.factor = factor(data$c459,levels=c("C29264","C1374","C205","C287","C510","C29536_2","C29536","C47384_2","C47384","C61625","C224","C224_2","C47393","C62002","C62005","C61635","C28836","C28836_2","C61527","C62009_2","C62009","C65263","C28870","C73035","C73035_2","C1027","C62012","C340","C341","C341_2","C11306","C1318","C77524","C28906_2","C28906","C28947_2","C28947_1","C1051","C87471","C61680","C61608","C28935_2","C28935","C380","C61686","C61671","C367_2","C367","C367_3","C16447","C47476","C61703_2","C61703","C61707_2","C61707","C166759","C28982","C47984","C28990","C81663","C65435","C65435_2","C42771","C454_2","C454","C61737","C65495_1","C65495_2","C180533","C62027","C62027_2","C75769","C61754","C61754_2","C61754_3","C47712","C840_2","C840","c840_3","C47529","C741","C739","C739_2","C1099","C500","C506_2","C506_1","C74548_1","C515","C1108_1","C1108_2","C1108_3","C93305","C29076","C87618","C537_2","C537","C68460","C39707","C29098","C561","C561_2","C62039","C29124","C29125","C29134","C47575","C61796","C29148","C120263","C611","C153096","C66118_2","C66118","C29034","C47585","C888_3","C888","C888_2","C888_4","C29162_2","C29162","C66869","C47491","C61612","C61612_2","C47616","C62045","C62046","C29254","C29254_2","C29842","C710","C62059","C47640_1","C47640_2","C493","C716","C159287","C29346_1","C29346_2","C198","C198_2","C61879","C72391","C81580","C769","C770_2","C770","C64625_2","C64625_1","C779","C74425","C62073","C61917_3","C61917_1","C61917_2","C29416","C66523_2","C66523_3","C66523_4","C66523","C111035","C47957","C66529","C61939","C75965","C75965_2","C29453","C29454","C29049_2","C29049","C641","C68505","C66955","C47764_3","C47764_1","C47764_2","C29507","C29510","C945","C1278_3","C1278_1","C1278_2","C45812"))
data$c64493.factor = factor(data$c64493,levels=c("c64576","c64499","c64921","c64595","c154484","c139178","c64922","c125004","c64502","c64527","c64530","c98849","c98855","c139180","c139181","c139182","c64525","c64533","c64534","c71124","c161335","c64526","c118854","c64528","c64531","c85552","c98857","c71127","c64535","c103390","c89788","c116149","c189433","c189434","c64498","c139179","c98859","c98852","c98850","c98856","c64536","c64537","c161336","c89789","c98851","c189435","c161333","c189432","c161334"))
data$drug_howlong_2.factor = factor(data$drug_howlong_2,levels=c("1","2","3","4"))
data$medicamentos_de_uso_habitual_complete.factor = factor(data$medicamentos_de_uso_habitual_complete,levels=c("0","1","2"))
data$medicationprevious.factor = factor(data$medicationprevious,levels=c("0","1"))
data$medicationprevious_2.factor = factor(data$medicationprevious_2,levels=c("0","1"))
data$c460.factor = factor(data$c460,levels=c("C29264","C1374","C205","C287","C510","C29536_2","C29536","C47384_2","C47384","C61625","C224","C224_2","C47393","C62002","C62005","C61635","C28836","C28836_2","C61527","C62009_2","C62009","C65263","C28870","C73035","C73035_2","C1027","C62012","C340","C341","C341_2","C11306","C1318","C77524","C28906_2","C28906","C28947_2","C28947_1","C1051","C87471","C61680","C61608","C28935_2","C28935","C380","C61686","C61671","C367_2","C367","C367_3","C16447","C47476","C61703_2","C61703","C61707_2","C61707","C166759","C28982","C47984","C28990","C81663","C65435","C65435_2","C42771","C454_2","C454","C61737","C65495_1","C65495_2","C180533","C62027","C62027_2","C75769","C61754","C61754_2","C61754_3","C47712","C840_2","C840","c840_3","C47529","C741","C739","C739_2","C1099","C500","C506_2","C506_1","C74548_1","C515","C1108_1","C1108_2","C1108_3","C93305","C29076","C87618","C537_2","C537","C68460","C39707","C29098","C561","C561_2","C62039","C29124","C29125","C29134","C47575","C61796","C29148","C120263","C611","C153096","C66118_2","C66118","C29034","C47585","C888_3","C888","C888_2","C888_4","C29162_2","C29162","C66869","C47491","C61612","C61612_2","C47616","C62045","C62046","C29254","C29254_2","C29842","C710","C62059","C47640_1","C47640_2","C493","C716","C159287","C29346_1","C29346_2","C198","C198_2","C61879","C72391","C81580","C769","C770_2","C770","C64625_2","C64625_1","C779","C74425","C62073","C61917_3","C61917_1","C61917_2","C29416","C66523_2","C66523_3","C66523_4","C66523","C111035","C47957","C66529","C61939","C75965","C75965_2","C29453","C29454","C29049_2","C29049","C641","C68505","C66955","C47764_3","C47764_1","C47764_2","C29507","C29510","C945","C1278_3","C1278_1","C1278_2","C45812"))
data$c87865_2.factor = factor(data$c87865_2,levels=c("1","2","3","4"))
data$c83047_2.factor = factor(data$c83047_2,levels=c("1","2","3","4"))
data$medicamentos_prvios_complete.factor = factor(data$medicamentos_prvios_complete,levels=c("0","1","2"))
data$medicalhistory.factor = factor(data$medicalhistory,levels=c("0","1"))
data$medicalhistory_2.factor = factor(data$medicalhistory_2,levels=c("0","1"))
data$c16458.factor = factor(data$c16458,levels=c("C51679","C51687","C51691","C46088","C157809","C51676","C15209","C51758","C3046","C15236","C51583","C92946","C86589","C34690","C86074","C168249","C15256","C92901","C34753","C15277","C51645","C15284","C114667_2","C83000","C15294","C80430","C15307","C157778","C157839","C164212","C51998","C51605","C91838","C51762","C15342"))
data$c18772.factor = factor(data$c18772,levels=c("http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C103454","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104296","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104301","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104308","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104937","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C105636","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C106779","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C106806","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C113101","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C113190","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C113630","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C116980","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C117252","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C118853","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C12405","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C124175","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C124186","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C12422","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C125674","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C126921","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C13062","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C131376","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C131390","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C135580","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C142573","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C14289","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C143411","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C15329","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C157879","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C157896","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C160275","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C161325","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C164135","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C167437","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C167449","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C168379","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C173987","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C180132","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C186252","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C188088","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C189008","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C191554","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C192010","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C192628","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C197914","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C202008","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25152","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25349","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25473","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25489","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25539","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26682","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26687","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26696","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26756","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26851","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C28145","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C28177","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C2982","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C2987","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3002","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3100","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3109","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3117","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3122","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C32141","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3231","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3258","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3280","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C32898","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3303","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3318","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C33325","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34331","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34340","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34528","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34618","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34659","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34661","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34670","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34699","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34753","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34764","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34818","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34890","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34942","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C35022","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C35165","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C35272","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C36185","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3671","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C37930","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C37943","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C37954","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C41830","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C4371","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50464","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50537","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50559","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50685","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50688","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C62223","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64496","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64527","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64528","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64594","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64934","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64954","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C70667","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C71685","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C73990","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C74534","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C78161","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C78262","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C79545","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C80111","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C80385","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C84480","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C84484","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C87497","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C90025","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C95437","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C95746","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C97141","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C98811","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C98852","Thesaurus:C103718","Thesaurus:C104301","Thesaurus:C112036","Thesaurus:C112174","Thesaurus:C121585","Thesaurus:C122344","Thesaurus:C131235","Thesaurus:C131390","Thesaurus:C14289","Thesaurus:C143896","Thesaurus:C15291","Thesaurus:C16838","Thesaurus:C17649","Thesaurus:C176864","Thesaurus:C202090","Thesaurus:C21100","Thesaurus:C21104","Thesaurus:C25473","Thesaurus:C25549","Thesaurus:C26682","Thesaurus:C26696","Thesaurus:C28286","Thesaurus:C2987","Thesaurus:C3002","Thesaurus:C3098","Thesaurus:C32078","Thesaurus:C3208","Thesaurus:C3232","Thesaurus:C32898","Thesaurus:C3300","Thesaurus:C3303","Thesaurus:C3333","Thesaurus:C3415","Thesaurus:C34528","Thesaurus:C34618","Thesaurus:C34661","Thesaurus:C34670","Thesaurus:C34699","Thesaurus:C34753","Thesaurus:C34764","Thesaurus:C34986","Thesaurus:C35022","Thesaurus:C35024","Thesaurus:C41830","Thesaurus:C48190","Thesaurus:C50558","Thesaurus:C51921","Thesaurus:C56634","Thesaurus:C69208","Thesaurus:C78161","Thesaurus:C78213","Thesaurus:C80111","Thesaurus:C89715","Thesaurus:C91122","Thesaurus:C9357","Thesaurus:C97162"))
data$c65140_2.factor = factor(data$c65140_2,levels=c("1","2","3","4"))
data$antecedentes_pessoais_complete.factor = factor(data$antecedentes_pessoais_complete,levels=c("0","1","2"))
data$c4876_yn.factor = factor(data$c4876_yn,levels=c("0","1"))
data$c4876_yn_2.factor = factor(data$c4876_yn_2,levels=c("0","1"))
data$c4876.factor = factor(data$c4876,levels=c("http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C103454","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104296","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104301","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104308","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104937","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C105636","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C106779","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C106806","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C113101","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C113190","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C113630","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C116980","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C117252","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C118853","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C12405","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C124175","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C124186","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C12422","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C125674","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C126921","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C13062","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C131376","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C131390","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C135580","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C142573","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C14289","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C143411","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C15329","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C157879","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C157896","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C160275","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C161325","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C164135","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C167437","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C167449","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C168379","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C173987","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C180132","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C186252","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C188088","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C189008","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C191554","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C192010","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C192628","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C197914","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C202008","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25152","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25349","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25473","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25489","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25539","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26682","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26687","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26696","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26756","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26851","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C28145","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C28177","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C2982","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C2987","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3002","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3100","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3109","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3117","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3122","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C32141","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3231","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3258","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3280","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C32898","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3303","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3318","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C33325","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34331","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34340","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34528","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34618","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34659","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34661","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34670","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34699","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34753","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34764","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34818","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34890","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34942","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C35022","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C35165","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C35272","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C36185","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3671","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C37930","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C37943","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C37954","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C41830","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C4371","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50464","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50537","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50559","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50685","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50688","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C62223","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64496","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64527","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64528","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64594","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64934","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64954","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C70667","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C71685","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C73990","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C74534","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C78161","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C78262","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C79545","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C80111","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C80385","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C84480","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C84484","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C87497","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C90025","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C95437","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C95746","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C97141","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C98811","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C98852","Thesaurus:C103718","Thesaurus:C104301","Thesaurus:C112036","Thesaurus:C112174","Thesaurus:C121585","Thesaurus:C122344","Thesaurus:C131235","Thesaurus:C131390","Thesaurus:C14289","Thesaurus:C143896","Thesaurus:C15291","Thesaurus:C16838","Thesaurus:C17649","Thesaurus:C176864","Thesaurus:C202090","Thesaurus:C21100","Thesaurus:C21104","Thesaurus:C25473","Thesaurus:C25549","Thesaurus:C26682","Thesaurus:C26696","Thesaurus:C28286","Thesaurus:C2987","Thesaurus:C3002","Thesaurus:C3098","Thesaurus:C32078","Thesaurus:C3208","Thesaurus:C3232","Thesaurus:C32898","Thesaurus:C3300","Thesaurus:C3303","Thesaurus:C3333","Thesaurus:C3415","Thesaurus:C34528","Thesaurus:C34618","Thesaurus:C34661","Thesaurus:C34670","Thesaurus:C34699","Thesaurus:C34753","Thesaurus:C34764","Thesaurus:C34986","Thesaurus:C35022","Thesaurus:C35024","Thesaurus:C41830","Thesaurus:C48190","Thesaurus:C50558","Thesaurus:C51921","Thesaurus:C56634","Thesaurus:C69208","Thesaurus:C78161","Thesaurus:C78213","Thesaurus:C80111","Thesaurus:C89715","Thesaurus:C91122","Thesaurus:C9357","Thesaurus:C97162"))
data$c25685.factor = factor(data$c25685,levels=c("http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C103454","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104296","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104301","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104308","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104937","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C105636","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C106779","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C106806","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C113101","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C113190","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C113630","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C116980","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C117252","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C118853","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C12405","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C124175","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C124186","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C12422","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C125674","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C126921","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C13062","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C131376","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C131390","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C135580","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C142573","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C14289","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C143411","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C15329","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C157879","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C157896","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C160275","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C161325","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C164135","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C167437","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C167449","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C168379","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C173987","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C180132","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C186252","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C188088","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C189008","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C191554","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C192010","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C192628","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C197914","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C202008","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25152","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25349","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25473","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25489","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25539","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26682","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26687","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26696","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26756","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26851","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C28145","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C28177","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C2982","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C2987","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3002","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3100","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3109","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3117","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3122","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C32141","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3231","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3258","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3280","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C32898","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3303","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3318","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C33325","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34331","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34340","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34528","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34618","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34659","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34661","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34670","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34699","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34753","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34764","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34818","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34890","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34942","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C35022","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C35165","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C35272","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C36185","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3671","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C37930","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C37943","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C37954","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C41830","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C4371","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50464","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50537","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50559","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50685","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50688","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C62223","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64496","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64527","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64528","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64594","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64934","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64954","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C70667","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C71685","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C73990","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C74534","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C78161","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C78262","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C79545","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C80111","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C80385","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C84480","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C84484","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C87497","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C90025","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C95437","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C95746","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C97141","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C98811","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C98852","Thesaurus:C103718","Thesaurus:C104301","Thesaurus:C112036","Thesaurus:C112174","Thesaurus:C121585","Thesaurus:C122344","Thesaurus:C131235","Thesaurus:C131390","Thesaurus:C14289","Thesaurus:C143896","Thesaurus:C15291","Thesaurus:C16838","Thesaurus:C17649","Thesaurus:C176864","Thesaurus:C202090","Thesaurus:C21100","Thesaurus:C21104","Thesaurus:C25473","Thesaurus:C25549","Thesaurus:C26682","Thesaurus:C26696","Thesaurus:C28286","Thesaurus:C2987","Thesaurus:C3002","Thesaurus:C3098","Thesaurus:C32078","Thesaurus:C3208","Thesaurus:C3232","Thesaurus:C32898","Thesaurus:C3300","Thesaurus:C3303","Thesaurus:C3333","Thesaurus:C3415","Thesaurus:C34528","Thesaurus:C34618","Thesaurus:C34661","Thesaurus:C34670","Thesaurus:C34699","Thesaurus:C34753","Thesaurus:C34764","Thesaurus:C34986","Thesaurus:C35022","Thesaurus:C35024","Thesaurus:C41830","Thesaurus:C48190","Thesaurus:C50558","Thesaurus:C51921","Thesaurus:C56634","Thesaurus:C69208","Thesaurus:C78161","Thesaurus:C78213","Thesaurus:C80111","Thesaurus:C89715","Thesaurus:C91122","Thesaurus:C9357","Thesaurus:C97162"))
data$c124353_unitoftime.factor = factor(data$c124353_unitoftime,levels=c("1","2","3","4"))
data$c25471.factor = factor(data$c25471,levels=c("0","1"))
data$c178992_unitoftime.factor = factor(data$c178992_unitoftime,levels=c("1","2","3","4"))
data$c41332.factor = factor(data$c41332,levels=c("0","1","2","3"))
data$sintomas_complete.factor = factor(data$sintomas_complete,levels=c("0","1","2"))
data$phyex_finding_yn.factor = factor(data$phyex_finding_yn,levels=c("0","1"))
data$phyex_finding_yn_2.factor = factor(data$phyex_finding_yn_2,levels=c("0","1"))
data$c25305_system.factor = factor(data$c25305_system,levels=c("1","2","3","5","6","7","8"))
data$c87079.factor = factor(data$c87079,levels=c("c26740","c50685"))
data$c163004.factor = factor(data$c163004,levels=c("c79545","c112199"))
data$c168436.factor = factor(data$c168436,levels=c("c26687","c2983","c26901"))
data$c122008.factor = factor(data$c122008,levels=c("c119203","c2998","c3036","c50591","c167437","c167445"))
data$c198356.factor = factor(data$c198356,levels=c("c191568","c119216","c191569","c87116","c78718","c61454","c191616","c191570","c36295"))
data$c167415.factor = factor(data$c167415,levels=c("c168074","c26682","c168075","c168096","c3100","c98700"))
data$c168189.factor = factor(data$c168189,levels=c("c49488","c168181"))
data$c83023.factor = factor(data$c83023,levels=c("http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C103454","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104296","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104301","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104308","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104937","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C105636","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C106779","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C106806","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C113101","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C113190","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C113630","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C116980","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C117252","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C118853","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C12405","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C124175","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C124186","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C12422","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C125674","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C126921","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C13062","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C131376","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C131390","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C135580","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C142573","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C14289","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C143411","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C15329","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C157879","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C157896","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C160275","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C161325","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C164135","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C167437","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C167449","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C168379","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C173987","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C180132","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C186252","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C188088","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C189008","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C191554","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C192010","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C192628","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C197914","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C202008","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25152","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25349","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25473","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25489","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25539","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26682","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26687","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26696","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26756","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26851","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C28145","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C28177","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C2982","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C2987","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3002","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3100","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3109","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3117","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3122","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C32141","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3231","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3258","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3280","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C32898","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3303","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3318","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C33325","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34331","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34340","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34528","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34618","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34659","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34661","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34670","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34699","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34753","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34764","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34818","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34890","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34942","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C35022","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C35165","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C35272","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C36185","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3671","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C37930","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C37943","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C37954","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C41830","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C4371","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50464","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50537","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50559","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50685","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50688","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C62223","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64496","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64527","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64528","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64594","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64934","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64954","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C70667","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C71685","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C73990","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C74534","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C78161","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C78262","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C79545","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C80111","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C80385","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C84480","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C84484","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C87497","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C90025","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C95437","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C95746","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C97141","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C98811","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C98852","Thesaurus:C103718","Thesaurus:C104301","Thesaurus:C112036","Thesaurus:C112174","Thesaurus:C121585","Thesaurus:C122344","Thesaurus:C131235","Thesaurus:C131390","Thesaurus:C14289","Thesaurus:C143896","Thesaurus:C15291","Thesaurus:C16838","Thesaurus:C17649","Thesaurus:C176864","Thesaurus:C202090","Thesaurus:C21100","Thesaurus:C21104","Thesaurus:C25473","Thesaurus:C25549","Thesaurus:C26682","Thesaurus:C26696","Thesaurus:C28286","Thesaurus:C2987","Thesaurus:C3002","Thesaurus:C3098","Thesaurus:C32078","Thesaurus:C3208","Thesaurus:C3232","Thesaurus:C32898","Thesaurus:C3300","Thesaurus:C3303","Thesaurus:C3333","Thesaurus:C3415","Thesaurus:C34528","Thesaurus:C34618","Thesaurus:C34661","Thesaurus:C34670","Thesaurus:C34699","Thesaurus:C34753","Thesaurus:C34764","Thesaurus:C34986","Thesaurus:C35022","Thesaurus:C35024","Thesaurus:C41830","Thesaurus:C48190","Thesaurus:C50558","Thesaurus:C51921","Thesaurus:C56634","Thesaurus:C69208","Thesaurus:C78161","Thesaurus:C78213","Thesaurus:C80111","Thesaurus:C89715","Thesaurus:C91122","Thesaurus:C9357","Thesaurus:C97162"))
data$exame_fsico_complete.factor = factor(data$exame_fsico_complete,levels=c("0","1","2"))
data$lab_list_yn.factor = factor(data$lab_list_yn,levels=c("0","1"))
data$eleg2_whichlab.factor = factor(data$eleg2_whichlab,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$c17479.factor = factor(data$c17479,levels=c("0","1"))
data$other_lab_yn.factor = factor(data$other_lab_yn,levels=c("0","1"))
data$lab_chk.factor = factor(data$lab_chk,levels=c("0","1"))
data$exames_laboratoriais_complete.factor = factor(data$exames_laboratoriais_complete,levels=c("0","1","2"))
data$ecg_done.factor = factor(data$ecg_done,levels=c("1","0"))
data$ecg_standard.factor = factor(data$ecg_standard,levels=c("0","1"))
data$c87081.factor = factor(data$c87081,levels=c("c100076","c111092","c111094","c111101","c111100","c88140","c17649"))
data$c168100___0.factor = factor(data$c168100___0,levels=c("0","1"))
data$c168100___c62269.factor = factor(data$c168100___c62269,levels=c("0","1"))
data$c168100___c62270.factor = factor(data$c168100___c62270,levels=c("0","1"))
data$c168100___c26703.factor = factor(data$c168100___c26703,levels=c("0","1"))
data$c168100___c71026.factor = factor(data$c168100___c71026,levels=c("0","1"))
data$c168100___c191644.factor = factor(data$c168100___c191644,levels=c("0","1"))
data$c168100___c62271.factor = factor(data$c168100___c62271,levels=c("0","1"))
data$c168100___ni.factor = factor(data$c168100___ni,levels=c("0","1"))
data$c168100___unk.factor = factor(data$c168100___unk,levels=c("0","1"))
data$c168100___nask.factor = factor(data$c168100___nask,levels=c("0","1"))
data$c168100___asku.factor = factor(data$c168100___asku,levels=c("0","1"))
data$c168100___inv.factor = factor(data$c168100___inv,levels=c("0","1"))
data$c168100___na.factor = factor(data$c168100___na,levels=c("0","1"))
data$ecg_audit.factor = factor(data$ecg_audit,levels=c("0","1"))
data$c117807.factor = factor(data$c117807,levels=c("5","4","3","2","1"))
data$ecg_checked_yn.factor = factor(data$ecg_checked_yn,levels=c("0","1"))
data$ecg_metadata_yn.factor = factor(data$ecg_metadata_yn,levels=c("0","1"))
data$eletrocardiograma_complete.factor = factor(data$eletrocardiograma_complete,levels=c("0","1","2"))
data$adhere_1.factor = factor(data$adhere_1,levels=c("0","1"))
data$adhere_2.factor = factor(data$adhere_2,levels=c("1","2","3","4","5"))
data$adhere_3.factor = factor(data$adhere_3,levels=c("1","2","3","4"))
data$adhere_4.factor = factor(data$adhere_4,levels=c("0","1"))
data$adhere_4_1.factor = factor(data$adhere_4_1,levels=c("1","2","3","4","5"))
data$adhere_4_2.factor = factor(data$adhere_4_2,levels=c("1","2","3","4"))
data$adhere_5.factor = factor(data$adhere_5,levels=c("0","1"))
data$adhere_5_1.factor = factor(data$adhere_5_1,levels=c("1","2","3","4","5"))
data$adhere_5_2.factor = factor(data$adhere_5_2,levels=c("1","2","3","4"))
data$adhere_6.factor = factor(data$adhere_6,levels=c("0","1"))
data$adhere_7.factor = factor(data$adhere_7,levels=c("0","1"))
data$adhere_8.factor = factor(data$adhere_8,levels=c("0","1"))
data$adhere_10.factor = factor(data$adhere_10,levels=c("0","1"))
data$adhere_12.factor = factor(data$adhere_12,levels=c("1","2","3","4"))
data$adeso_complete.factor = factor(data$adeso_complete,levels=c("0","1","2"))
data$ae_yes_no.factor = factor(data$ae_yes_no,levels=c("0","1"))
data$sae.factor = factor(data$sae,levels=c("0","1"))
data$adverse_event.factor = factor(data$adverse_event,levels=c("http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C103454","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104296","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104301","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104308","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C104937","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C105636","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C106779","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C106806","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C113101","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C113190","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C113630","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C116980","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C117252","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C118853","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C12405","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C124175","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C124186","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C12422","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C125674","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C126921","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C13062","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C131376","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C131390","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C135580","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C142573","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C14289","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C143411","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C15329","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C157879","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C157896","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C160275","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C161325","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C164135","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C167437","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C167449","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C168379","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C173987","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C180132","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C186252","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C188088","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C189008","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C191554","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C192010","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C192628","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C197914","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C202008","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25152","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25349","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25473","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25489","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25539","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26682","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26687","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26696","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26756","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C26851","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C28145","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C28177","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C2982","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C2987","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3002","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3100","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3109","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3117","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3122","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C32141","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3231","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3258","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3280","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C32898","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3303","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3318","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C33325","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34331","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34340","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34528","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34618","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34659","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34661","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34670","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34699","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34753","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34764","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34818","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34890","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C34942","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C35022","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C35165","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C35272","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C36185","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C3671","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C37930","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C37943","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C37954","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C41830","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C4371","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50464","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50537","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50559","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50685","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C50688","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C62223","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64496","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64527","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64528","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64594","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64934","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C64954","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C70667","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C71685","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C73990","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C74534","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C78161","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C78262","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C79545","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C80111","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C80385","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C84480","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C84484","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C87497","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C90025","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C95437","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C95746","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C97141","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C98811","http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C98852","Thesaurus:C103718","Thesaurus:C104301","Thesaurus:C112036","Thesaurus:C112174","Thesaurus:C121585","Thesaurus:C122344","Thesaurus:C131235","Thesaurus:C131390","Thesaurus:C14289","Thesaurus:C143896","Thesaurus:C15291","Thesaurus:C16838","Thesaurus:C17649","Thesaurus:C176864","Thesaurus:C202090","Thesaurus:C21100","Thesaurus:C21104","Thesaurus:C25473","Thesaurus:C25549","Thesaurus:C26682","Thesaurus:C26696","Thesaurus:C28286","Thesaurus:C2987","Thesaurus:C3002","Thesaurus:C3098","Thesaurus:C32078","Thesaurus:C3208","Thesaurus:C3232","Thesaurus:C32898","Thesaurus:C3300","Thesaurus:C3303","Thesaurus:C3333","Thesaurus:C3415","Thesaurus:C34528","Thesaurus:C34618","Thesaurus:C34661","Thesaurus:C34670","Thesaurus:C34699","Thesaurus:C34753","Thesaurus:C34764","Thesaurus:C34986","Thesaurus:C35022","Thesaurus:C35024","Thesaurus:C41830","Thesaurus:C48190","Thesaurus:C50558","Thesaurus:C51921","Thesaurus:C56634","Thesaurus:C69208","Thesaurus:C78161","Thesaurus:C78213","Thesaurus:C80111","Thesaurus:C89715","Thesaurus:C91122","Thesaurus:C9357","Thesaurus:C97162"))
data$aes.factor = factor(data$aes,levels=c("2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30"))
data$grade.factor = factor(data$grade,levels=c("1","2","3","4","5"))
data$attribution.factor = factor(data$attribution,levels=c("1","2","3","4","5"))
data$action_taken.factor = factor(data$action_taken,levels=c("1","2","3","4"))
data$seguimento.factor = factor(data$seguimento,levels=c("1","2","3","4"))
data$additional_aes.factor = factor(data$additional_aes,levels=c("0","1"))
data$eventos_adversos_complete.factor = factor(data$eventos_adversos_complete,levels=c("0","1","2"))
data$bia_diuretic.factor = factor(data$bia_diuretic,levels=c("0","1"))
data$bia_dosechange.factor = factor(data$bia_dosechange,levels=c("0","1"))
data$bia_menses.factor = factor(data$bia_menses,levels=c("0","1"))
data$bia_mensesreg.factor = factor(data$bia_mensesreg,levels=c("0","1"))
data$md_drugs.factor = factor(data$md_drugs,levels=c("0","1"))
data$md_show_pipelab.factor = factor(data$md_show_pipelab,levels=c("0","1"))
data$md_labs.factor = factor(data$md_labs,levels=c("0","1"))
data$md_labs_chked.factor = factor(data$md_labs_chked,levels=c("0","1"))
data$md_labs_find.factor = factor(data$md_labs_find,levels=c("0","1"))
data$md_bottle.factor = factor(data$md_bottle,levels=c("0","1"))
data$md_deliver.factor = factor(data$md_deliver,levels=c("0","1"))
data$md_explain.factor = factor(data$md_explain,levels=c("0","1"))
data$md_explainchk.factor = factor(data$md_explainchk,levels=c("0","1"))
data$c133396_labsdelay.factor = factor(data$c133396_labsdelay,levels=c("0","1"))
data$md_mng_yn.factor = factor(data$md_mng_yn,levels=c("0","1"))
data$avaliao_mdica_complete.factor = factor(data$avaliao_mdica_complete,levels=c("0","1","2"))
data$wk_datetime1_yn.factor = factor(data$wk_datetime1_yn,levels=c("0","1"))
data$wk_datetime2_yn.factor = factor(data$wk_datetime2_yn,levels=c("0","1"))
data$wk_datetime3_yn.factor = factor(data$wk_datetime3_yn,levels=c("0","1"))
data$wk_datetime4_yn.factor = factor(data$wk_datetime4_yn,levels=c("0","1"))
data$wk_datetime5_yn.factor = factor(data$wk_datetime5_yn,levels=c("0","1"))
data$wk_datetime6_yn.factor = factor(data$wk_datetime6_yn,levels=c("0","1"))
data$wk_datetime7_yn.factor = factor(data$wk_datetime7_yn,levels=c("0","1"))
data$wk_datetime8_yn.factor = factor(data$wk_datetime8_yn,levels=c("0","1"))
data$wk_datetime9_yn.factor = factor(data$wk_datetime9_yn,levels=c("0","1"))
data$wk_datetime10_yn.factor = factor(data$wk_datetime10_yn,levels=c("0","1"))
data$wk_safety.factor = factor(data$wk_safety,levels=c("0","1"))
data$wk_c25471.factor = factor(data$wk_c25471,levels=c("0","1"))
data$wk_adherence.factor = factor(data$wk_adherence,levels=c("0","1"))
data$wk_lostdose.factor = factor(data$wk_lostdose,levels=c("0","1","2","5"))
data$wk_question_yn.factor = factor(data$wk_question_yn,levels=c("0","1"))
data$wk_question_chk.factor = factor(data$wk_question_chk,levels=c("0","1"))
data$contato_semanal_complete.factor = factor(data$contato_semanal_complete,levels=c("0","1","2"))
data$c25250.factor = factor(data$c25250,levels=c("0","1","99"))
data$c66727.factor = factor(data$c66727,levels=c("c41331","c28554","c139236","c48226","c176343","c48227","c150884","c156551","c49631","c161411","c191340","c48250","c191656","c35571","c50996","c142185","c142349","c191339","c49628","c166074","c161410","c49632","c49633","c49634","c176342","c17649"))
data$conclusion_info.factor = factor(data$conclusion_info,levels=c("0","1"))
data$c66727_action.factor = factor(data$c66727_action,levels=c("0","1","2"))
data$concluso_complete.factor = factor(data$concluso_complete,levels=c("0","1","2"))
data$attachment_type.factor = factor(data$attachment_type,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13"))
data$anexos_complete.factor = factor(data$anexos_complete,levels=c("0","1","2"))

levels(data$redcap_event_name.factor)=c("Eleg","1visit","2visit","3visit")
levels(data$redcap_repeat_instrument.factor)=c("Sintomas","Exame físico","Exames Laboratoriais","Adesão","Eventos Adversos","CONTATO SEMANAL","Comorbidades","Medicamentos De Uso Habitual","Medicamentos Prévios","Antecedentes Pessoais","ANEXOS")
levels(data$ubs.factor)=c("Vila Reis - ESF I Gilberto Rinaldi, UBS I Dr Pedro Saud","Bom Jesus - ESF II Nelson Pereira Lima","Ilha Grande - ESF III João Pegoraro","Juruce - ESF/UBS IV Sarandy","Vila Paulista - ESF V Joao Augusto dos Reis","Morumbi - ESF VI Antonio Jacomini","Doutor Francisco Xavier Toda Filho - ESF VII","Santa Julia - UBS Ruth Rodrigues de Pereira")
levels(data$mob_option.factor)=c("Ligação regular (operadora)","WhatsApp: mensagem","WhatsApp: mensagem, ligação áudio","WhatsApp: mensagem, ligação áudio/vídeo","Todos")
levels(data$mob_hour.factor)=c("Manhã","Manhã e tarde","Tarde","Noite","Tarde e noite","Qualquer horário")
levels(data$mob_days.factor)=c("Dias da semana","Final de semana","Qualquer dia")
levels(data$eleg_transport.factor)=c("Depende exclusivamente do transporte oferecido","Se necessário pode ir por meios próprios","Em todas as avaliações pode ir por meios próprios")
levels(data$eleg_howknow.factor)=c("Anúncio público na UBS (poster, vídeo)","Divulgação por meio da equipe de enfermagem da UBS","Divulgação por meio do Médico da UBS","Referência de outro participante","Busca ativa por voluntários","Outros")
levels(data$availability_limit_yn.factor)=c("Não","Sim")
levels(data$sex.factor)=c("Feminino","Masculino")
levels(data$eleg_preg_yn.factor)=c("Não","Sim")
levels(data$eleg_com_yn.factor)=c("Não","Sim")
levels(data$eleg_drugs_yn.factor)=c("Não","Sim")
levels(data$eleg_fem_high___1.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_high___2.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_high___3.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_high___4.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_high___5.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_high___0.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_high___ni.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_high___unk.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_high___nask.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_high___asku.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_high___inv.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_high___na.factor)=c("Unchecked","Checked")
levels(data$eleg_femhigh_yn.factor)=c("Não","Sim")
levels(data$eleg_fem_low___1.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_low___2.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_low___3.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_low___4.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_low___5.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_low___6.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_low___7.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_low___ni.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_low___unk.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_low___nask.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_low___asku.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_low___inv.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_low___na.factor)=c("Unchecked","Checked")
levels(data$eleg_fem_low_1.factor)=c("Não","Sim")
levels(data$eleg2_whichlab_2.factor)=c("ESF I - VILA REIS (Gilberto Rinaldi)","ESF II - BOM JESUS (Nelson Pereira Lima)","ESF III - ILHA GRANDE (João Pegoraro)","ESF IV - JURUCÊ (Sarandy)","ESF V - VILA PAULISTA (Joao Augusto dos Reis)","ESF VI - MORUMBI (Antonio Jacomini)","ESF VII - CESAR CAPATO (Doutor Francisco Xavier Toda Filho)","UBS - SANTA JULIA (Ruth Rodrigues de Pereira)","UBS - VILA REIS (Dr Pedro Saud)","UBS - MORUMBI","CENTRO DE SAÚDE")
levels(data$eleg2_labcollect.factor)=c("Não","Sim")
levels(data$eleg2_labchecked.factor)=c("Não","Sim")
levels(data$eleg2_labfinding.factor)=c("Não","Sim")
levels(data$eleg2_labex.factor)=c("Não","Sim")
levels(data$eleg2_bhcg.factor)=c("Negativo","Positivo","Não realizado")
levels(data$normalcycle.factor)=c("Não","Sim")
levels(data$contraception_ok.factor)=c("Não","Sim")
levels(data$tcle_sent.factor)=c("Não","Sim")
levels(data$tcle_read.factor)=c("Não","Sim")
levels(data$tcle_questions.factor)=c("Não","Sim")
levels(data$tcle_questions_3.factor)=c("Não","Sim")
levels(data$desire_ok_2.factor)=c("Não","Sim")
levels(data$sms_agree.factor)=c("Não","Sim")
levels(data$block_alerts_1st.factor)=c("No","Yes")
levels(data$elegibilidade_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$consent_c16735_yn.factor)=c("Não","Sim")
levels(data$tcle_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$race.factor)=c("Asiático (Asian: C41260)","Branco (White, C41261) Denotes a person with European, Middle Eastern, or North African ancestral origin who identifies, or is identified, as White. (FDA)","Branco, América do Sul (White South American, C128994) A person having origins in the original peoples of Europe, the Middle East, or North Africa, and South America.","Negro (Black, C16352)","Desconhecido (Unknown, C17998): Not known, not observed, not recorded, or refused.","Outro (Other, C17649) {race_other}")
levels(data$maritalstatus.factor)=c("divorciado (divorced: C51776)","Amasiado (domestic partner: C53262)","Casado (married: C51773)","Solteiro (never married: C51774)","Separado (separated: C156541)","Viúvo (widowed: C51775)")
levels(data$employment.factor)=c("Tempo integral (Full-Time: C52658)","Desempregado (Not Employed: C75563)","Tempo parcial (Part-Time: C75562)")
levels(data$income.factor)=c("Até R$1.000","R$1.001 - R$3.000","R$3.001 - R$5.000","R$5.000 - R$10.000","Acima de R$10.000")
levels(data$dados_demogrficos_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$wb_1.factor)=c("Muito ruim","Ruim","Nem ruim nem boa","Boa","Muito boa")
levels(data$wb_2.factor)=c("Muito insatisfeito","Insatisfeito","Nem satisfeito nem insatisfeito","Satisfeito","Muito satisfeito")
levels(data$wb_3.factor)=c("Nada","Muito pouco","Mais ou menos","Bastante","Extremamente")
levels(data$wb_4.factor)=c("Nada","Muito pouco","Mais ou menos","Bastante","Extremamente")
levels(data$wb_5.factor)=c("Nada","Muito pouco","Mais ou menos","Bastante","Extremamente")
levels(data$wb_6.factor)=c("Nada","Muito pouco","Mais ou menos","Bastante","Extremamente")
levels(data$wb_7.factor)=c("Nada","Muito pouco","Mais ou menos","Bastante","Extremamente")
levels(data$wb_8.factor)=c("Nada","Muito pouco","Mais ou menos","Bastante","Extremamente")
levels(data$wb_9.factor)=c("Nada","Muito pouco","Mais ou menos","Bastante","Extremamente")
levels(data$wb_10.factor)=c("Nada","Muito pouco","Médio","Muito","Completamente")
levels(data$wb_11.factor)=c("Nada","Muito pouco","Médio","Muito","Completamente")
levels(data$wb_12.factor)=c("Nada","Muito pouco","Médio","Muito","Completamente")
levels(data$wb_13.factor)=c("Nada","Muito pouco","Médio","Muito","Completamente")
levels(data$wb_14.factor)=c("Nada","Muito pouco","Médio","Muito","Completamente")
levels(data$wb_15.factor)=c("Muito ruim","Ruim","Nem ruim nem boa","Boa","Muito boa")
levels(data$wb_16.factor)=c("Muito ruim","Ruim","Nem ruim nem boa","Boa","Muito boa")
levels(data$wb_17.factor)=c("Muito ruim","Ruim","Nem ruim nem boa","Boa","Muito boa")
levels(data$wb_18.factor)=c("Muito ruim","Ruim","Nem ruim nem boa","Boa","Muito boa")
levels(data$wb_19.factor)=c("Muito ruim","Ruim","Nem ruim nem boa","Boa","Muito boa")
levels(data$wb_20.factor)=c("Muito ruim","Ruim","Nem ruim nem boa","Boa","Muito boa")
levels(data$wb_21.factor)=c("Muito ruim","Ruim","Nem ruim nem boa","Boa","Muito boa")
levels(data$wb_22.factor)=c("Muito ruim","Ruim","Nem ruim nem boa","Boa","Muito boa")
levels(data$wb_23.factor)=c("Muito ruim","Ruim","Nem ruim nem boa","Boa","Muito boa")
levels(data$wb_24.factor)=c("Muito ruim","Ruim","Nem ruim nem boa","Boa","Muito boa")
levels(data$wb_25.factor)=c("Muito ruim","Ruim","Nem ruim nem boa","Boa","Muito boa")
levels(data$wb_26.factor)=c("Nunca","Algumas vezes","Frequentemente","Muito frequentemente","Sempre")
levels(data$whoqol_how.factor)=c("Não precisei de ajuda","Um pesquisador me ajudou relendo alguma pergunta que eu não entendi","O questionário foi administrado por um pesquisador")
levels(data$questionrio_qualidade_de_vida_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$dass21_1.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_2.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_3.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_4.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_5.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_6.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_7.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_8.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_9.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_10.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_11.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_12.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_13.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_14.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_15.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_16.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_17.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_18.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_19.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_20.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$dass21_21.factor)=c("Não se aplicou de maneira alguma","Aplicou-se em algum grau, ou por pouco de tempo","Aplicou-se em um grau considerável, ou por uma boa parte do tempo","Aplicou-se muito, ou na maioria do tempo")
levels(data$escore_de_depresso_ansiedade_e_estresse_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$ecap1.factor)=c("Eu não me sinto constrangido(a) com o meu peso ou o tamanho do meu corpo quando estou com outras pessoas.","Eu me sinto preocupado(a) em como pareço para os outros, mas isto, normalmente, não me faz sentir desapontado(a) comigo mesmo(a).","Eu fico mesmo constrangido(a) com a minha aparência e o meu peso, o que me faz sentir desapontado(a) comigo mesmo(a).","Eu me sinto muito constrangido(a) com o meu peso e, freqüentemente, sinto muita vergonha e desprezo por mim mesmo(a). Tento evitar contatos sociais por causa desse constrangimento.")
levels(data$ecap2.factor)=c("Eu não tenho nenhuma dificuldade para comer devagar, de maneira","Embora pareça que eu devore os alimentos, não acabo me sentindo empanturrado(a) por comer demais.","Às vezes tendo a comer rapidamente, sentindo-me então desconfortavelmente cheio(a) depois.","Eu tenho o hábito de engolir minha comida sem realmente mastigá- la. Quando isto acontece, em geral me sinto desconfortavelmente empanturrado(a) por ter comido demais.")
levels(data$ecap3.factor)=c("Eu me sinto capaz de controlar meus impulsos para comer, quando eu quero.","Eu sinto que tenho falhado em controlar meu comportamento alimentar mais do que a média das pessoas.","Eu me sinto totalmente incapaz de controlar meus impulsos para comer.","Por me sentir tão incapaz de controlar meu comportamento alimentar, entro em desespero tentando manter o controle.")
levels(data$ecap4.factor)=c("Eu não tenho o hábito de comer quando estou chateado(a).","Às vezes eu como quando estou chateado(a) mas, freqüentemente, sou capaz de me ocupar e afastar minha mente da comida.","Eu tenho o hábito regular de comer quando estou chateado(a) mas, de vez em quando, posso usar alguma outra atividade para afastar minha mente da comida","Eu tenho o forte hábito de comer quando estou chateado(a). Nada parece me ajudar a parar com esse hábito")
levels(data$ecap5.factor)=c("Normalmente quando como alguma coisa é porque estou fisicamente com fome.","De vez em quando como alguma coisa por impulso, mesmo quando não estou realmente com fome.","Eu tenho o hábito regular de comer alimentos que realmente não aprecio para satisfazer uma sensação de fome, mesmo que fisicamente eu não necessite de comida.","Mesmo que não esteja fisicamente com fome, tenho uma sensação de fome em minha boca que somente parece ser satisfeita quando eu como um alimento, tipo um sanduíche, que enche a minha boca. Às vezes, quando eu como o alimento para satisfazer minha fome na boca, em seguida eu o cuspo, assim não ganharei peso.")
levels(data$ecap6.factor)=c("Eu não sinto qualquer culpa ou ódio de mim mesmo(a) depois de comer demais.","De vez em quando sinto culpa ou ódio de mim mesmo(a) depois de comer demais.","Quase o tempo todo sinto muita culpa ou ódio de mim mesmo(a) depois de comer demais.")
levels(data$ecap7.factor)=c("Eu não perco o controle total da minha alimentação quando estou em dieta, mesmo após períodos em que como demais.","Às vezes, quando estou em dieta e como um alimento proibido, sinto como se tivesse estragado tudo e como ainda mais.","Freqüentemente, quando como demais durante uma dieta, tenho o hábito de dizer para mim mesmo(a): agora que estraguei tudo, porque não irei até o fim. Quando isto acontece, eu como ainda mais.","Eu tenho o hábito regular de começar dietas rigorosas por mim mesmo(a), mas quebro as dietas entrando numa compulsão alimentar. Minha vida parece ser uma festa ou um morrer de fome.")
levels(data$ecap8.factor)=c("Eu raramente como tanta comida a ponto de me sentir desconfortavelmente empanturrado(a) depois.","Normalmente, cerca de uma vez por mês, como uma tal quantidade de comida que acabo me sentindo muito empanturrado(a).","Eu tenho períodos regulares durante o mês, quando como grandes quantidades de comida, seja na hora das refeições, seja nos lanches.","Eu como tanta comida que, regularmente, me sinto bastante desconfortável depois de comer e, algumas vezes, um pouco enjoado(a).")
levels(data$ecap9.factor)=c("Em geral, minha ingesta calórica não sobe a níveis muito altos, nem desce a níveis muito baixos.","Às vezes, depois de comer demais, tento reduzir minha ingesta calórica para quase nada, para compensar o excesso de calorias que ingeri.","Eu tenho o hábito regular de comer demais durante a noite. Parece que a minha rotina não é estar com fome de manhã, mas comer demais à noite.","Na minha vida adulta tenho tido períodos, que duram semanas, nos quais praticamente me mato de fome. Isto se segue a períodos em que como demais. Parece que vivo uma vida de festa ou de morrer de fome.")
levels(data$ecap10.factor)=c("Normalmente eu sou capaz de parar de comer quando quero. Eu sei quando já chega.","De vez em quando, eu tenho uma compulsão para comer que parece que não posso controlar.","Freqüentemente tenho fortes impulsos para comer que parece que não sou capaz de controlar, mas, em outras ocasiões, posso controlar meus impulsos para comer.","Eu me sinto incapaz de controlar impulsos para comer. Eu tenho medo de não ser capaz de parar de comer por vontade própria.")
levels(data$ecap11.factor)=c("Eu não tenho problema algum para parar de comer quando me sinto cheio(a).","Eu, normalmente, posso parar de comer quando me sinto cheio(a) mas, de vez em quando, comer demais me deixa desconfortavelmente empanturrado(a).","Eu tenho um problema para parar de comer uma vez que eu tenha começado e, normalmente, sinto-me desconfortavelmente empanturrado(a) depois que faço uma refeição.","Por eu ter o problema de não ser capaz de parar de comer quando quero, às vezes tenho que provocar o vômito, usar laxativos e/ou diuréticos para aliviar minha sensação de empanturramento.")
levels(data$ecap12.factor)=c("Parece que eu como tanto quando estou com os outros (reuniões familiares, sociais), como quando estou sozinho(a).","Às vezes, quando eu estou com outras pessoas, não como tanto quanto eu quero comer porque me sinto constrangido(a) com o meu comportamento alimentar.","Freqüentemente eu como só uma pequena quantidade de comida quando outros estão presentes, pois me sinto muito embaraçado(a) com o meu comportamento alimentar.","Eu me sinto tão envergonhado(a) por comer demais que escolho horas para comer demais quando sei que ninguém me verá. Eu me sinto como uma pessoa que se esconde para comer.")
levels(data$ecap13.factor)=c("Eu faço três refeições ao dia com apenas um lanche ocasional entre as refeições.","Eu faço três refeições ao dia mas, normalmente, também lancho entre as refeições.","Quando eu faço lanches pesados, tenho o hábito de pular as refeições regulares.","Há períodos regulares em que parece que eu estou continuamente comendo, sem refeições planejadas.")
levels(data$ecap14.factor)=c("Eu não penso muito em tentar controlar impulsos indesejáveis para comer.","Pelo menos, em algum momento, sinto que meus pensamentos estão pré-ocupados com tentar controlar meus impulsos para comer.","Freqüentemente, sinto que gasto muito tempo pensando no quanto comi ou tentando não comer mais.","Parece, para mim, que a maior parte das horas que passo acordado(a) estão pré-ocupadas por pensamentos sobre comer ou não comer. Sinto como se eu estivesse constantemente lutando para não comer.")
levels(data$ecap15.factor)=c("Eu não penso muito sobre comida.","Eu tenho fortes desejos por comida, mas eles só duram curtos períodos de tempo.","Há dias em que parece que eu não posso pensar em mais nada a não ser comida.","Na maioria dos dias, meus pensamentos parecem estar pré-ocupados com comida. Sinto como se eu vivesse para comer.")
levels(data$ecap16.factor)=c("Eu normalmente sei se estou ou não fisicamente com fome. Eu como a porção certa de comida para me satisfazer.","De vez em quando eu me sinto em dúvida para saber se estou ou não fisicamente com fome. Nessas ocasiões é difícil saber quanto eu deveria comer para me satisfazer.","Mesmo que se eu pudesse saber quantas calorias eu deveria ingerir, não teria idéia alguma de qual seria a quantidade normal de comida para mim.")
levels(data$escala_de_compulso_alimentar_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$antropometria_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$presso_arterial_determinao_do_membro_de_referncia_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$bp_showmetadata.factor)=c("Não","Sim")
levels(data$presso_arterial_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$bia_tobacco.factor)=c("N","S")
levels(data$bia_phact.factor)=c("N","S")
levels(data$bia_alcohol.factor)=c("N","S")
levels(data$bia_ambtemp.factor)=c("N","S")
levels(data$bia_clothes.factor)=c("N","S")
levels(data$bia_objects.factor)=c("N","S")
levels(data$bia_hair.factor)=c("N","S")
levels(data$bia_hair_rem.factor)=c("N","S")
levels(data$bia_cleaning.factor)=c("N","S")
levels(data$bia_decubitus.factor)=c("N","S")
levels(data$bia_showmetadata.factor)=c("Não","Sim")
levels(data$impedncia_bioeltrica_corporal_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$grip_limitations.factor)=c("Não","Sim")
levels(data$grip_rhlimitation.factor)=c("Nenhuma","Paralisia da mão","Usando gesso no pulso ou na mão","A maior parte da mão coberta por bandagens","Ausência do polegar ou dedos quebrados","Outra limitação significativa {grip_rhlimitother}")
levels(data$grip_lhlimitation___0.factor)=c("Unchecked","Checked")
levels(data$grip_lhlimitation___1.factor)=c("Unchecked","Checked")
levels(data$grip_lhlimitation___2.factor)=c("Unchecked","Checked")
levels(data$grip_lhlimitation___3.factor)=c("Unchecked","Checked")
levels(data$grip_lhlimitation___4.factor)=c("Unchecked","Checked")
levels(data$grip_lhlimitation___5.factor)=c("Unchecked","Checked")
levels(data$grip_lhlimitation___ni.factor)=c("Unchecked","Checked")
levels(data$grip_lhlimitation___unk.factor)=c("Unchecked","Checked")
levels(data$grip_lhlimitation___nask.factor)=c("Unchecked","Checked")
levels(data$grip_lhlimitation___asku.factor)=c("Unchecked","Checked")
levels(data$grip_lhlimitation___inv.factor)=c("Unchecked","Checked")
levels(data$grip_lhlimitation___na.factor)=c("Unchecked","Checked")
levels(data$griprecentsurgery.factor)=c("Não","Sim, à direita","Sim, à esquerda")
levels(data$grip_exclude.factor)=c("Não","Sim, não deveria testar a mão direita","Sim, não deveria testar a mão esquerda","Sim, não deveria testar ambas as mãos")
levels(data$grip_surgery.factor)=c("Não","Sim, na mão ou pulso direito","Sim, na mão ou pulso esquerdo","Sim, em ambas as mãos")
levels(data$grip_dominance.factor)=c("Destro","Canhoto","Ambidestro")
levels(data$grip_pain.factor)=c("Não","Sim, na mão direita","Sim, na mão esquerda","Sim, em ambas as mãos")
levels(data$grip_rhpain.factor)=c("Não","Sim")
levels(data$grip_lhpain.factor)=c("Não","Sim")
levels(data$grip_procedure.factor)=c("Não","Sim")
levels(data$grip_seemetadata.factor)=c("Não","Sim")
levels(data$fora_de_preenso_palmar_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$habitointestinal.factor)=c("Diariamente","A cada dois dias","Três vezes por semana","Menos de três vezes por semana")
levels(data$consist_ncia.factor)=c("Sempre","Na maioria das vezes","Raramente","Nunca")
levels(data$evacuacaoliquida.factor)=c("Nunca","Raramente","Com frequência","Sempre")
levels(data$constipacao.factor)=c("Sim","Não")
levels(data$laxativos.factor)=c("Nunca","Raramente","Diariamente","Semanalmente","Mensalmente")
levels(data$frequenciaurinaria.factor)=c("Habitual","Aumentada","Diminuída")
levels(data$ingestaohidrica.factor)=c("Habitual","Aumentada","Diminuída")
levels(data$quedadecabelo.factor)=c("Nunca","Leve","Moderada","Intensa","Muito intensa")
levels(data$avaliao_nutricional_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$foodallergy.factor)=c("Sim","Não")
levels(data$amendoim.factor)=c("Sim","Não")
levels(data$alergianozes.factor)=c("Sim","Não")
levels(data$alergiamar.factor)=c("Sim","Não")
levels(data$alergia_a_ovos.factor)=c("Sim","Não")
levels(data$intoler_ncia_a_lactose.factor)=c("Sim","Não")
levels(data$alergia_ao_trigo_gl_ten_ce.factor)=c("Sim","Não")
levels(data$lergia_soja.factor)=c("Sim","Não")
levels(data$alergia_a_peixes_como_salm.factor)=c("Sim","Não")
levels(data$alergia_alimentar_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$evs_days.factor)=c("0","1","2","3","4","5","6","7")
levels(data$evs_time.factor)=c("0","10","20","30","40","50","60","90","120","150")
levels(data$phy_activity_1.factor)=c("Alongamento (Stretching; NCIT: C154225)","Aquecimento (Warm-Up; NCIT: C122029)","Atividade da Vida Diária (Activity of Daily Living; NCIT: C53291)","Atividade de Lazer (Leisure Activity; NCIT: C104103)","Boliche (Bowling; NCIT: C172270)","Calistenia (Calisthenics; NCIT: C94739)","Caminhada (Walking) (Walking; NCIT: C73554)","Ciclismo (Bicicleta) (Bicycling; NCIT: C85401)","Corrida leve (Jogging; NCIT: C85398)","Corrida vigorosa (Running; NCIT: C94737)","Dança (Dancing; NCIT: C172269)","Escalada (Climbing; NCIT: C81002)","Levantamento de Peso (Lifting; NCIT: C86567)","Natação (Swimming; NCIT: C94738)","Operação de Máquinas Pesadas (Operation of Heavy Machinery; NCIT: C168795)","Permanecer Fora da Cama (Stay Out of Bed; NCIT: C95543)","Realizar Tarefas de rua (ir ao mercado, pagar contas) (Run Errand; NCIT: C95549)","Remada (Seated Row; NCIT: C122031)","Trabalho Leve (Light Work; NCIT: C95545)","Trabalho Pesado (Hard Work; NCIT: C95547)","Treinamento com Resistência (Resistance Training; NCIT: C154219)")
levels(data$phy_activity_2.factor)=c("Não","Alongamento (Stretching; NCIT: C154225)","Aquecimento (Warm-Up; NCIT: C122029)","Atividade da Vida Diária (Activity of Daily Living; NCIT: C53291)","Atividade de Lazer (Leisure Activity; NCIT: C104103)","Boliche (Bowling; NCIT: C172270)","Calistenia (Calisthenics; NCIT: C94739)","Caminhada (Walking) (Walking; NCIT: C73554)","Ciclismo (Bicicleta) (Bicycling; NCIT: C85401)","Corrida leve (Jogging; NCIT: C85398)","Corrida vigorosa (Running; NCIT: C94737)","Dança (Dancing; NCIT: C172269)","Escalada (Climbing; NCIT: C81002)","Levantamento de Peso (Lifting; NCIT: C86567)","Natação (Swimming; NCIT: C94738)","Operação de Máquinas Pesadas (Operation of Heavy Machinery; NCIT: C168795)","Permanecer Fora da Cama (Stay Out of Bed; NCIT: C95543)","Realizar Tarefas de rua (ir ao mercado, pagar contas) (Run Errand; NCIT: C95549)","Remada (Seated Row; NCIT: C122031)","Trabalho Leve (Light Work; NCIT: C95545)","Trabalho Pesado (Hard Work; NCIT: C95547)","Treinamento com Resistência (Resistance Training; NCIT: C154219)")
levels(data$phy_activity_3.factor)=c("Não","Alongamento (Stretching; NCIT: C154225)","Aquecimento (Warm-Up; NCIT: C122029)","Atividade da Vida Diária (Activity of Daily Living; NCIT: C53291)","Atividade de Lazer (Leisure Activity; NCIT: C104103)","Boliche (Bowling; NCIT: C172270)","Calistenia (Calisthenics; NCIT: C94739)","Caminhada (Walking) (Walking; NCIT: C73554)","Ciclismo (Bicicleta) (Bicycling; NCIT: C85401)","Corrida leve (Jogging; NCIT: C85398)","Corrida vigorosa (Running; NCIT: C94737)","Dança (Dancing; NCIT: C172269)","Escalada (Climbing; NCIT: C81002)","Levantamento de Peso (Lifting; NCIT: C86567)","Natação (Swimming; NCIT: C94738)","Operação de Máquinas Pesadas (Operation of Heavy Machinery; NCIT: C168795)","Permanecer Fora da Cama (Stay Out of Bed; NCIT: C95543)","Realizar Tarefas de rua (ir ao mercado, pagar contas) (Run Errand; NCIT: C95549)","Remada (Seated Row; NCIT: C122031)","Trabalho Leve (Light Work; NCIT: C95545)","Trabalho Pesado (Hard Work; NCIT: C95547)","Treinamento com Resistência (Resistance Training; NCIT: C154219)")
levels(data$exercise_vital_sign_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$alcoholhistory.factor)=c("Nunca: Não consome bebidas alcoólicas","Ocasionalmente: Consumo esporádico, em ocasiões especiais","Regularmente: Consumo em uma base consistente, mas não diariamente","Diariamente: Consumo de álcool todos os dias","Ex-etilista")
levels(data$alcoholstoppedage.factor)=c("Menos de 1 ano","1 a 5 anos","5 a 10 anos","10 a 20 anos","Mais de 20 anos")
levels(data$alcoholyears.factor)=c("Menos de 2 anos","2 a 5 anos","5 a 10 anos","10 a 20 anos","Mais de 20 anos")
levels(data$alcoholtype___1.factor)=c("Unchecked","Checked")
levels(data$alcoholtype___2.factor)=c("Unchecked","Checked")
levels(data$alcoholtype___3.factor)=c("Unchecked","Checked")
levels(data$alcoholtype___9.factor)=c("Unchecked","Checked")
levels(data$alcoholtype___ni.factor)=c("Unchecked","Checked")
levels(data$alcoholtype___unk.factor)=c("Unchecked","Checked")
levels(data$alcoholtype___nask.factor)=c("Unchecked","Checked")
levels(data$alcoholtype___asku.factor)=c("Unchecked","Checked")
levels(data$alcoholtype___inv.factor)=c("Unchecked","Checked")
levels(data$alcoholtype___na.factor)=c("Unchecked","Checked")
levels(data$consumo_alcool_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$smokehistory.factor)=c("Não","Sim, e continua fumando","Sim, mas parou")
levels(data$consumo_tabaco_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$recordatrio_alimentar_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$whatmeals___1.factor)=c("Unchecked","Checked")
levels(data$whatmeals___2.factor)=c("Unchecked","Checked")
levels(data$whatmeals___3.factor)=c("Unchecked","Checked")
levels(data$whatmeals___4.factor)=c("Unchecked","Checked")
levels(data$whatmeals___5.factor)=c("Unchecked","Checked")
levels(data$whatmeals___6.factor)=c("Unchecked","Checked")
levels(data$whatmeals___ni.factor)=c("Unchecked","Checked")
levels(data$whatmeals___unk.factor)=c("Unchecked","Checked")
levels(data$whatmeals___nask.factor)=c("Unchecked","Checked")
levels(data$whatmeals___asku.factor)=c("Unchecked","Checked")
levels(data$whatmeals___inv.factor)=c("Unchecked","Checked")
levels(data$whatmeals___na.factor)=c("Unchecked","Checked")
levels(data$avaliao_da_ingesto_alimentar_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$c83129_yn.factor)=c("Não","Sim")
levels(data$wk_removealert.factor)=c("Não","Sim")
levels(data$datas_importantes_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$c142660.factor)=c("Grupo A","Grupo B")
levels(data$nmero_do_participante_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$comorbidity.factor)=c("Não","Sim")
levels(data$comorbidity_2.factor)=c("Não","Sim")
levels(data$c16457.factor)=c("C3390 - Acidente vascular cerebral","C6996 - Adenomiose","C2869 - Anemia","C26696 - Ansiedade","C35145 - Apendicite","C2884 - Artrite reumatoide","C3318 - Úlcera péptica","C28397 - Asma","C26722 - Bronquite crônica","C52593 - Cárie dentária","C9305 - Câncer","C2920 - Câncer de pele","C34449 - Cardiomiopatia hipertrófica","C26713 - Catarata","C122822 - Colelitíase","C97162 - Compulsão alimentar","C4786 - Demência","C2982 - Depressão","C26747 - Diabetes mellitus tipo 2","C2987 - Diarreia","C63709 - Disfunção temporomandibular","C4922 - Diverticulose","C26732 - Doença arterial coronariana","C2866 - Doença de Alzheimer","C2965 - Doença de Crohn","C3071 - Doença de Graves","C26845 - Doença de Parkinson","C26781 - Doença do refluxo gastroesofágico","C113609 - Doença hepática crônica","C84444 - Doença hepática gordurosa não alcoólica, Esteatose","C3138 - Doença inflamatória intestinal","C3889 - Doença inflamatória pélvica","C164315 - Doença pulmonar intersticial","C3199 - Doença pulmonar obstrutiva crônica","C80078 - Doença renal crônica","C2931 - Doenças cardiovascular","C41830 - Dor nas costas","C3001 - Eczema","C26862 - Endometriose","C89715 - Enxaqueca","C3020 - Epilepsia","C2891 - Esôfago de Barrett","C3243 - Esclerose múltipla","C9224 - Esofagite","C3362 - Esquizofrenia","C79821 - Estenose uretral","C50466 - Fibrilação atrial","C87497 - Fibromialgia","C26780 - Gastrite crônica","C26782 - Glaucoma","C26785 - Goiter (Bócio)","C34650 - Gota","C98945 - Hérnia de Hiato","C39293 - Helicobacter Pylori Infection (Infecção por H. pylori)","C26792 - Hepatite","C37967 - Hipercolesterolemia (LDL ≥ 130 ou não-HDL ≥ 160 ou CT ≥ 190 mg/dl)","C3117 - Hipertensão","C197871 - Hipertensão pulmonar tromboembólica crônica","C3123 - Hipertiroidismo","C37971 - Hipertrigliceridemia (TAG ≥ 150 mg/dl)","C3961 - Hiperuricemia","C84774 - Hipoalfalipoproteinemia (HDL H < 40 mg/dl / M < 50 mg/dl)","C26800 - Hipotireoidismo","C3014 - Incontinência urinária","C50791 - Infecções do trato urinário","C35650 - Infecções respiratórias alta","C35158 - Infecções respiratórias baixa","C28286 - Insônia","C3080 - Insuficiência cardíaca congestiva","C127822 - Insuficiência venosa crônica","C3201 - Lúpus eritematoso sistêmico","C26975 - Laringite crônica","C3434 - Leiomioma uterino","C3161 - Leucemia","C3207 - Linfedema crônico","C34797 - Malária","C26828 - Meningite","C2983 - Nefrolitíase","C4345 - Neoplasias mieloproliferativas","C3293 - Osteoartrite","C50910 - Osteopenia","C3298 - Osteoporose","C128386 - Otite média supurativa crônica","C3306 - Pancreatite","C84637 - Pancreatite crônica","C35326 - Periodontite crônica","C123216 - Pielonefrite crônica","C3336 - Policitemia vera","C26930 - Prostatite crônica","C3346 - Psoríase","C114476 - Reação alérgica","C113101 - Resistência à insulina (pré-diabetes)","C2952 - Retocolite ulcerativa","C79532 - Rinite alérgica","C27168 - Síndrome da apneia obstrutiva do sono","C26883 - Síndrome de Sjögren","C26900 - Síndrome de Turner","C61283 - Síndrome do Anticorpo Anti-Fosfolípide (SAAF)","C82343 - Síndrome do intestino irritável","C114667 - Síndrome dos ovários policísticos","C35151 - Sinusite crônica","C97141 - Tendinopatia","C34423 - Transtorno bipolar","C97160 - Transtorno do déficit de atenção e hiperatividade","C88412 - Transtorno do espectro autista","C88411 - Transtorno Obsessivo Compulsivo (TOC)","C3407 - Trombocitemia essencial","C3423 - Tuberculose","C3108 - VIH/SIDA")
levels(data$com_howlong2.factor)=c("Ano(s)","Dia(s)","Mês(es)","Semana(s)")
levels(data$comorbidades_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$medication.factor)=c("Não","Sim")
levels(data$medication_2.factor)=c("Não","Sim")
levels(data$c459.factor)=c("C29264 - Óleo mineral (Óleo Fr. 100 mL)","C1374 - Acetato de gosserrelina 10,8 mg (Inj.)","C205 - Aciclovir 200 mg (Comp.)","C287 - Ácido Acetilsalicílico 100 mg (Comp.)","C510 - Ácido Fólico 5 mg (Comp.)","C29536_2 - Ácido Valpróico 250 mg (Cáps.)","C29536 - Ácido Valpróico 250 mg/5 ml (Sol. oral Fr. 100 mL)","C47384_2 - Albendazol 40 mg/mL (Susp. oral Fr. 10 mL)","C47384 - Albendazol 400 mg (Comp.)","C61625 - Alendronato 70 mg (Comp.)","C224 - Alopurinol 100 mg (Comp.)","C224_2 - Alopurinol 300 mg (Comp.)","C47393 - Aminofilina 100 mg (Comp.)","C62002 - Amiodarona 200 mg (Comp.)","C62005 - Amitriptilina 25 mg (Comp.)","C61635 - Anlodipino 5 mg (Comp.)","C28836 - Atenolol 25 mg (Comp.)","C28836_2 - Atenolol 50 mg (Comp.)","C61527 - Atorvastatina 40 mg (Comp.)","C62009_2 - Beclometasona 200 mcg/dose (Aerossol oral Fr. 200 doses)","C62009 - Beclometasona 50 mcg/dose (Aerossol oral Fr. 200 doses)","C65263 - Biperideno 2 mg (Comp.)","C28870 - Bisacodil 5 mg (Comp.)","C73035 - Bromoprida 10 mg (Comp.)","C73035_2 - Bromoprida 4 mg/mL (Sol. oral Fr. 20 mL)","C1027 - Budesonida 50 mcg (Spray nasal)","C62012 - Bupropiona 150 mg (Comp.)","C340 - Captopril 25 mg (Comp.)","C341 - Carbamazepina 2% (Xarope Fr. 100 mL)","C341_2 - Carbamazepina 200 mg (Comp.)","C11306 - Carbonato de Calcio + VitD 1250 mg (500 mg de Ca el.)  + 400UI (Comp.)","C1318 - Carbonato de Lítio 300 mg (Comp.)","C77524 - Carvão Ativado 1% (Pó para Sol. oral Embalagem 30 g)","C28906_2 - Carvedilol 25 mg (Comp.)","C28906 - Carvedilol 6,25 mg (Comp.)","C28947_2 - Ciclobenzaprina 10 mg (Comp.)","C28947_1 - Ciclobenzaprina 5 mg (Comp.)","C1051 - Cilostazol 50 mg (Comp.)","C87471 - Ciprofibrato 100 mg (Comp.)","C61680 - Citalopram 20 mg (Comp.)","C61608 - Clomipramina 25 mg (Comp.)","C28935_2 - Clonazepam 2 mg (Comp.)","C28935 - Clonazepam 2,5 mg/mL (Sol. oral Fr. 20 mL)","C380 - Clonidina 0,150 mg (Comp.)","C61686 - Clopidogrel 75 mg (Comp.)","C61671 - Cloroquina 250 mg (Comp.)","C367_2 - Clorpromazina 100 mg (Comp.)","C367 - Clorpromazina 25 mg (Comp.)","C367_3 - Clorpromazina 40 mg/mL (Sol. oral Fr. 20 mL)","C16447 - Colágeno (Cáps.)","C47476 - Desogestrel 0,75 mg (Comp.)","C61703_2 - Desvenlafaxina 100 mg (Comp.)","C61703 - Desvenlafaxina 50 mg (Comp.)","C61707_2 - Dexclorfeniramina 2 mg (Comp.)","C61707 - Dexclorfeniramina 2 mg/5mL (Xarope Fr. 100 mL)","C166759 - Diacereína 50 mg (Cáps.)","C28982 - Diazepam 10 mg (Comp.)","C47984 - Diclofenaco de sódio 50 mg","C28990 - Digoxina 0,25 mg (Comp.)","C81663 - Diosmina 450 mg (Comp.)","C65435 - Dipirona 500 mg (Comp.)","C65435_2 - Dipirona 500 mg/mL (Sol. oral Fr. 10 mL)","C42771 - Dispositivo intra uterino (Unidade)","C454_2 - Domperidona 1 mg/mL (Susp. oral Fr. 100 mL)","C454 - Domperidona 10 mg (Comp.)","C61737 - Doxazosina 4 mg (Comp.)","C65495_1 - Duloxetina 30 mg (Comp.)","C65495_2 - Duloxetina 60 mg (Comp.)","C180533 - Empagliflozin/Linagliptin (GLYXAMBI)","C62027 - Enalapril 10 mg (Comp.)","C62027_2 - Enalapril 20 mg (Comp.)","C75769 - Enoxaparina sódica 40 mg/0,4 mL (Sol. Inj. Seringa preenchida)","C61754 - Escitalopram 10 mg","C61754_2 - Escitalopram 15 mg","C61754_3 - Escitalopram 20 mg","C47712 - Escopolamina 10 mg (Comp.)","C840_2 - Espironolactona 100 mg (Comp.)","C840 - Espironolactona 25 mg (Comp.)","c840_3 - Espironolactona 50 mg (Comp.)","C47529 - Ezetimiba 10 mg","C741 - Fenitoína 100 mg (Comp.)","C739 - Fenobarbital 100 mg (Comp.)","C739_2 - Fenobarbital 4% (Sol. oral Fr. 20 mL)","C1099 - Finasterida 5 mg (Comp.)","C500 - Fluconazol 150 mg (Cáps.)","C506_2 - Fluoxetina 10 mg (Cáps.)","C506_1 - Fluoxetina 20 mg (Cáps.)","C74548_1 - Fosfato de Codeína 30 mg (Comp.)","C515 - Furosemida 40 mg (Comp.)","C1108_1 - Gabapentina 300 mg (Cáps.)","C1108_2 - Gabapentina 400 mg (Cáps.)","C1108_3 - Gabapentina 600 mg (Cáps.)","C93305 - Ginkgo biloba 80 mg (Comp.)","C29076 - Glibenclamida 5 mg (Comp.)","C87618 - Gliclazida 30 mg (Comp. de lib. pr.)","C537_2 - Haloperidol 2 mg/mL (Sol. oral Fr. 20 mL)","C537 - Haloperidol 5 mg (Comp.)","C68460 - Hesperidina 50 mg (Comp.)","C39707 - Hidróxido de Alumínio 6,2% (Susp. oral Fr. 100 mL)","C29098 - Hidroclorotiazida 25 mg (Comp.)","C561 - Ibuprofeno 300 mg (Comp.)","C561_2 - Ibuprofeno 50 mg/mL (Sol. oral Fr. 30 mL)","C62039 - Imipramina 25 mg (Comp.)","C29124 - Insulina NPH 100 UI/mL (Sol. Inj.Fr. Amp. 10 ML)","C29125 - Insulina Regular 100 UI/mL (Sol. Inj.Fr. Amp. 10 ML)","C29134 - Isossorbida, dinitrato 5 mg (Comp. sublingual)","C47575 - Isossorbida, mononitrato 20 mg (Comp.)","C61796 - Ivermectina 6 mg (Comp.)","C29148 - Lactulose 667 mg/mL (XaropeFr. 120 mL)","C120263 - Lanceta  (Unidade)","C611 - Levodopa + Benserazida 200 mg + 50 mg (Comp.)","C153096 - Levodopa + Carbidopa 250 mg + 25 mg (Comp.)","C66118_2 - Levomepromazina 25 mg (Comp.)","C66118 - Levomepromazina 4% (Sol. oral Fr. 20 mL)","C29034 - Levonorgestrel + Etinilestradiol 0,15 mg + 0,03 mg (Comp.)","C47585 - Levonorgestrel 0,75 mg (Comp.)","C888_3 - Levotiroxina sódica 100 mcg (Comp.)","C888 - Levotiroxina sódica 25 mcg (Comp.)","C888_2 - Levotiroxina sódica 50 mcg (Comp.)","C888_4 - Levotiroxina sódica 75 mcg (Comp.)","C29162_2 - Loratadina 1 mg/mL (Xarope Fr. 100 mL)","C29162 - Loratadina 10 mg (Comp.)","C66869 - Losartana 50 mg (Comp.)","C47491 - Mesilato de dehidroergotamina 1 mg + Dipirona Monoidratada 350mg + Cafeína 100mg","C61612 - Metformina 500 mg (Comp.) (Glifage)","C61612_2 - Metformina 850 mg (Comp.) (Glifage)","C47616 - Metildopa 250 mg (Comp.)","C62045 - Metilfenidato 10 mg (Comp.)","C62046 - Metoclopramida 10 mg (Comp.)","C29254 - Metoprolol, succinato 25 mg (Comp.)","C29254_2 - Metoprolol, succinato 50 mg (Comp.)","C29842 - Nimesulida 100 mg (Comp.)","C710 - Nistatina 100.000 UI/mL (Susp. oral Fr. 50 mL)","C62059 - Noretisterona 0,35 mg (Comp.)","C47640_1 - Olmesartana 20 mg (Comp.)","C47640_2 - Olmesartana 40 mg (Comp.)","C493 - Omega 3 1.000 mg (Cáps.)","C716 - Omeprazol 20 mg (Cáps.)","C159287 - Outra medicação","C29346_1 - Pantoprazol 20 mg (Comp.)","C29346_2 - Pantoprazol 40 mg (Comp.)","C198 - Paracetamol 200 mg/ml (Sol. oral Fr. 20 mL)","C198_2 - Paracetamol 750 mg (Comp.)","C61879 - Paroxetina 20 mg (Comp.)","C72391 - Passiflora incarnata 45% (Tintura Fr. 100 mL)","C81580 - Periciazina 1% (Sol. oral Fr. 20 mL)","C769 - Prednisolona 3 mg/mL (Susp. oral Fr. 60 mL)","C770_2 - Prednisona 20 mg (Comp.)","C770 - Prednisona 5 mg (Comp.)","C64625_2 - Pregabalina 150 mg (Comp.)","C64625_1 - Pregabalina 75 mg (Comp.)","C779 - Prometazina 25 mg (Comp.)","C74425 - Propatilnitrato 10 mg","C62073 - Propranolol 40 mg (Comp.)","C61917_3 - Quetiapina 100 mg (Comp.)","C61917_1 - Quetiapina 25 mg (Comp.)","C61917_2 - Quetiapina 50 mg (Comp.)","C29416 - Risperidona 2 mg (Comp.)","C66523_2 - Rosuvastatina 10 mg (Comp.)","C66523_3 - Rosuvastatina 20 mg (Comp.)","C66523_4 - Rosuvastatina 40 mg (Comp.)","C66523 - Rosuvastatina 5 mg (Comp.)","C111035 - Sais para reidratação oral  (Pó para Sol. oral Envelope)","C47957 - Salbutamol 100 mcg/dose (Spray oral Fr. 200 doses)","C66529 - Secnidazol 1000 mg (Comp.)","C61939 - Sertralina 50 mg (Comp.)","C75965 - Sibutramina 10 mg (Cáps.)","C75965_2 - Sibutramina 15 mg (Cáps.)","C29453 - Simeticona 75 mg/mL (Sol. oral Fr. 10 mL)","C29454 - Sinvastatina 20 mg (Comp.)","C29049_2 - Sulfato Ferroso 25 mg/mL de ferro elementar (Sol. oral Fr. 30 mL)","C29049 - Sulfato Ferroso 40 mg de ferro elementar (Comp.)","C641 - Tiamazol 10 mg (Comp.)","C68505 - Tiamina 300 mg (Comp.)","C66955 - Tibolona","C47764_3 - Topiramato 100 mg (Comp.)","C47764_1 - Topiramato 25 mg (Comp.)","C47764_2 - Topiramato 50 mg (Comp.)","C29507 - Tramadol 50 mg (Cáps.)","C29510 - Trazodona","C945 - Varfarina 5 mg (Comp.)","C1278_3 - Venlafaxina 150 mg (Cáps.)","C1278_1 - Venlafaxina 37,5 mg (Caps.)","C1278_2 - Venlafaxina 75 mg (Caps.)","C45812 - Vitaminas do Complexo B  (Comp.)")
levels(data$c64493.factor)=c("dose única","Se necessário","Ao acordar","Todas as manhãs","Todos as tardes","Todas as noites","Antes de dormir","1 vez por dia","2 vezes por dia","3 vezes por dia","4 vezes por dia","5 vezes por dia","6 vezes por dia","7 vezes por dia","8 vezes por dia","9 vezes por dia","A cada 2 dias","A cada 3 dias","A cada 4 dias","A cada 5 dias","A cada 6 dias","1 vez por semana","2 a 3 vezes por semana","3 vezes por semana","4 vezes por semana","5 vezes por semana","6 vezes por semana","A cada 2 semanas","A cada 3 semanas","A cada 5 semanas","A cada 6 semanas","A cada 7 semanas","A cada 10 semanas","A cada 13 semanas","1 vez por mês","10 dias por mês","3 vezes por mês","4 vezes por mês","5 vezes por mês","6 vezes por mês","A cada 2 meses","A cada 3 meses","A cada 4 meses","A cada 6 meses","5 vezes por ano","A cada 10 anos","A cada 3 anos","A cada 4 anos","A cada 5 anos")
levels(data$drug_howlong_2.factor)=c("Ano(s)","Dia(s)","Mês(es)","Semana(s)")
levels(data$medicamentos_de_uso_habitual_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$medicationprevious.factor)=c("Não","Sim")
levels(data$medicationprevious_2.factor)=c("Não","Sim")
levels(data$c460.factor)=c("C29264 - Óleo mineral (Óleo Fr. 100 mL)","C1374 - Acetato de gosserrelina 10,8 mg (Inj.)","C205 - Aciclovir 200 mg (Comp.)","C287 - Ácido Acetilsalicílico 100 mg (Comp.)","C510 - Ácido Fólico 5 mg (Comp.)","C29536_2 - Ácido Valpróico 250 mg (Cáps.)","C29536 - Ácido Valpróico 250 mg/5 ml (Sol. oral Fr. 100 mL)","C47384_2 - Albendazol 40 mg/mL (Susp. oral Fr. 10 mL)","C47384 - Albendazol 400 mg (Comp.)","C61625 - Alendronato 70 mg (Comp.)","C224 - Alopurinol 100 mg (Comp.)","C224_2 - Alopurinol 300 mg (Comp.)","C47393 - Aminofilina 100 mg (Comp.)","C62002 - Amiodarona 200 mg (Comp.)","C62005 - Amitriptilina 25 mg (Comp.)","C61635 - Anlodipino 5 mg (Comp.)","C28836 - Atenolol 25 mg (Comp.)","C28836_2 - Atenolol 50 mg (Comp.)","C61527 - Atorvastatina 40 mg (Comp.)","C62009_2 - Beclometasona 200 mcg/dose (Aerossol oral Fr. 200 doses)","C62009 - Beclometasona 50 mcg/dose (Aerossol oral Fr. 200 doses)","C65263 - Biperideno 2 mg (Comp.)","C28870 - Bisacodil 5 mg (Comp.)","C73035 - Bromoprida 10 mg (Comp.)","C73035_2 - Bromoprida 4 mg/mL (Sol. oral Fr. 20 mL)","C1027 - Budesonida 50 mcg (Spray nasal)","C62012 - Bupropiona 150 mg (Comp.)","C340 - Captopril 25 mg (Comp.)","C341 - Carbamazepina 2% (Xarope Fr. 100 mL)","C341_2 - Carbamazepina 200 mg (Comp.)","C11306 - Carbonato de Calcio + VitD 1250 mg (500 mg de Ca el.)  + 400UI (Comp.)","C1318 - Carbonato de Lítio 300 mg (Comp.)","C77524 - Carvão Ativado 1% (Pó para Sol. oral Embalagem 30 g)","C28906_2 - Carvedilol 25 mg (Comp.)","C28906 - Carvedilol 6,25 mg (Comp.)","C28947_2 - Ciclobenzaprina 10 mg (Comp.)","C28947_1 - Ciclobenzaprina 5 mg (Comp.)","C1051 - Cilostazol 50 mg (Comp.)","C87471 - Ciprofibrato 100 mg (Comp.)","C61680 - Citalopram 20 mg (Comp.)","C61608 - Clomipramina 25 mg (Comp.)","C28935_2 - Clonazepam 2 mg (Comp.)","C28935 - Clonazepam 2,5 mg/mL (Sol. oral Fr. 20 mL)","C380 - Clonidina 0,150 mg (Comp.)","C61686 - Clopidogrel 75 mg (Comp.)","C61671 - Cloroquina 250 mg (Comp.)","C367_2 - Clorpromazina 100 mg (Comp.)","C367 - Clorpromazina 25 mg (Comp.)","C367_3 - Clorpromazina 40 mg/mL (Sol. oral Fr. 20 mL)","C16447 - Colágeno (Cáps.)","C47476 - Desogestrel 0,75 mg (Comp.)","C61703_2 - Desvenlafaxina 100 mg (Comp.)","C61703 - Desvenlafaxina 50 mg (Comp.)","C61707_2 - Dexclorfeniramina 2 mg (Comp.)","C61707 - Dexclorfeniramina 2 mg/5mL (Xarope Fr. 100 mL)","C166759 - Diacereína 50 mg (Cáps.)","C28982 - Diazepam 10 mg (Comp.)","C47984 - Diclofenaco de sódio 50 mg","C28990 - Digoxina 0,25 mg (Comp.)","C81663 - Diosmina 450 mg (Comp.)","C65435 - Dipirona 500 mg (Comp.)","C65435_2 - Dipirona 500 mg/mL (Sol. oral Fr. 10 mL)","C42771 - Dispositivo intra uterino (Unidade)","C454_2 - Domperidona 1 mg/mL (Susp. oral Fr. 100 mL)","C454 - Domperidona 10 mg (Comp.)","C61737 - Doxazosina 4 mg (Comp.)","C65495_1 - Duloxetina 30 mg (Comp.)","C65495_2 - Duloxetina 60 mg (Comp.)","C180533 - Empagliflozin/Linagliptin (GLYXAMBI)","C62027 - Enalapril 10 mg (Comp.)","C62027_2 - Enalapril 20 mg (Comp.)","C75769 - Enoxaparina sódica 40 mg/0,4 mL (Sol. Inj. Seringa preenchida)","C61754 - Escitalopram 10 mg","C61754_2 - Escitalopram 15 mg","C61754_3 - Escitalopram 20 mg","C47712 - Escopolamina 10 mg (Comp.)","C840_2 - Espironolactona 100 mg (Comp.)","C840 - Espironolactona 25 mg (Comp.)","c840_3 - Espironolactona 50 mg (Comp.)","C47529 - Ezetimiba 10 mg","C741 - Fenitoína 100 mg (Comp.)","C739 - Fenobarbital 100 mg (Comp.)","C739_2 - Fenobarbital 4% (Sol. oral Fr. 20 mL)","C1099 - Finasterida 5 mg (Comp.)","C500 - Fluconazol 150 mg (Cáps.)","C506_2 - Fluoxetina 10 mg (Cáps.)","C506_1 - Fluoxetina 20 mg (Cáps.)","C74548_1 - Fosfato de Codeína 30 mg (Comp.)","C515 - Furosemida 40 mg (Comp.)","C1108_1 - Gabapentina 300 mg (Cáps.)","C1108_2 - Gabapentina 400 mg (Cáps.)","C1108_3 - Gabapentina 600 mg (Cáps.)","C93305 - Ginkgo biloba 80 mg (Comp.)","C29076 - Glibenclamida 5 mg (Comp.)","C87618 - Gliclazida 30 mg (Comp. de lib. pr.)","C537_2 - Haloperidol 2 mg/mL (Sol. oral Fr. 20 mL)","C537 - Haloperidol 5 mg (Comp.)","C68460 - Hesperidina 50 mg (Comp.)","C39707 - Hidróxido de Alumínio 6,2% (Susp. oral Fr. 100 mL)","C29098 - Hidroclorotiazida 25 mg (Comp.)","C561 - Ibuprofeno 300 mg (Comp.)","C561_2 - Ibuprofeno 50 mg/mL (Sol. oral Fr. 30 mL)","C62039 - Imipramina 25 mg (Comp.)","C29124 - Insulina NPH 100 UI/mL (Sol. Inj.Fr. Amp. 10 ML)","C29125 - Insulina Regular 100 UI/mL (Sol. Inj.Fr. Amp. 10 ML)","C29134 - Isossorbida, dinitrato 5 mg (Comp. sublingual)","C47575 - Isossorbida, mononitrato 20 mg (Comp.)","C61796 - Ivermectina 6 mg (Comp.)","C29148 - Lactulose 667 mg/mL (XaropeFr. 120 mL)","C120263 - Lanceta  (Unidade)","C611 - Levodopa + Benserazida 200 mg + 50 mg (Comp.)","C153096 - Levodopa + Carbidopa 250 mg + 25 mg (Comp.)","C66118_2 - Levomepromazina 25 mg (Comp.)","C66118 - Levomepromazina 4% (Sol. oral Fr. 20 mL)","C29034 - Levonorgestrel + Etinilestradiol 0,15 mg + 0,03 mg (Comp.)","C47585 - Levonorgestrel 0,75 mg (Comp.)","C888_3 - Levotiroxina sódica 100 mcg (Comp.)","C888 - Levotiroxina sódica 25 mcg (Comp.)","C888_2 - Levotiroxina sódica 50 mcg (Comp.)","C888_4 - Levotiroxina sódica 75 mcg (Comp.)","C29162_2 - Loratadina 1 mg/mL (Xarope Fr. 100 mL)","C29162 - Loratadina 10 mg (Comp.)","C66869 - Losartana 50 mg (Comp.)","C47491 - Mesilato de dehidroergotamina 1 mg + Dipirona Monoidratada 350mg + Cafeína 100mg","C61612 - Metformina 500 mg (Comp.) (Glifage)","C61612_2 - Metformina 850 mg (Comp.) (Glifage)","C47616 - Metildopa 250 mg (Comp.)","C62045 - Metilfenidato 10 mg (Comp.)","C62046 - Metoclopramida 10 mg (Comp.)","C29254 - Metoprolol, succinato 25 mg (Comp.)","C29254_2 - Metoprolol, succinato 50 mg (Comp.)","C29842 - Nimesulida 100 mg (Comp.)","C710 - Nistatina 100.000 UI/mL (Susp. oral Fr. 50 mL)","C62059 - Noretisterona 0,35 mg (Comp.)","C47640_1 - Olmesartana 20 mg (Comp.)","C47640_2 - Olmesartana 40 mg (Comp.)","C493 - Omega 3 1.000 mg (Cáps.)","C716 - Omeprazol 20 mg (Cáps.)","C159287 - Outra medicação","C29346_1 - Pantoprazol 20 mg (Comp.)","C29346_2 - Pantoprazol 40 mg (Comp.)","C198 - Paracetamol 200 mg/ml (Sol. oral Fr. 20 mL)","C198_2 - Paracetamol 750 mg (Comp.)","C61879 - Paroxetina 20 mg (Comp.)","C72391 - Passiflora incarnata 45% (Tintura Fr. 100 mL)","C81580 - Periciazina 1% (Sol. oral Fr. 20 mL)","C769 - Prednisolona 3 mg/mL (Susp. oral Fr. 60 mL)","C770_2 - Prednisona 20 mg (Comp.)","C770 - Prednisona 5 mg (Comp.)","C64625_2 - Pregabalina 150 mg (Comp.)","C64625_1 - Pregabalina 75 mg (Comp.)","C779 - Prometazina 25 mg (Comp.)","C74425 - Propatilnitrato 10 mg","C62073 - Propranolol 40 mg (Comp.)","C61917_3 - Quetiapina 100 mg (Comp.)","C61917_1 - Quetiapina 25 mg (Comp.)","C61917_2 - Quetiapina 50 mg (Comp.)","C29416 - Risperidona 2 mg (Comp.)","C66523_2 - Rosuvastatina 10 mg (Comp.)","C66523_3 - Rosuvastatina 20 mg (Comp.)","C66523_4 - Rosuvastatina 40 mg (Comp.)","C66523 - Rosuvastatina 5 mg (Comp.)","C111035 - Sais para reidratação oral  (Pó para Sol. oral Envelope)","C47957 - Salbutamol 100 mcg/dose (Spray oral Fr. 200 doses)","C66529 - Secnidazol 1000 mg (Comp.)","C61939 - Sertralina 50 mg (Comp.)","C75965 - Sibutramina 10 mg (Cáps.)","C75965_2 - Sibutramina 15 mg (Cáps.)","C29453 - Simeticona 75 mg/mL (Sol. oral Fr. 10 mL)","C29454 - Sinvastatina 20 mg (Comp.)","C29049_2 - Sulfato Ferroso 25 mg/mL de ferro elementar (Sol. oral Fr. 30 mL)","C29049 - Sulfato Ferroso 40 mg de ferro elementar (Comp.)","C641 - Tiamazol 10 mg (Comp.)","C68505 - Tiamina 300 mg (Comp.)","C66955 - Tibolona","C47764_3 - Topiramato 100 mg (Comp.)","C47764_1 - Topiramato 25 mg (Comp.)","C47764_2 - Topiramato 50 mg (Comp.)","C29507 - Tramadol 50 mg (Cáps.)","C29510 - Trazodona","C945 - Varfarina 5 mg (Comp.)","C1278_3 - Venlafaxina 150 mg (Cáps.)","C1278_1 - Venlafaxina 37,5 mg (Caps.)","C1278_2 - Venlafaxina 75 mg (Caps.)","C45812 - Vitaminas do Complexo B  (Comp.)")
levels(data$c87865_2.factor)=c("Ano(s)","Dia(s)","Mês(es)","Semana(s)")
levels(data$c83047_2.factor)=c("Ano(s)","Dia(s)","Mês(es)","Semana(s)")
levels(data$medicamentos_prvios_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$medicalhistory.factor)=c("Não","Sim")
levels(data$medicalhistory_2.factor)=c("Não","Sim")
levels(data$c16458.factor)=c("C51679 - Amigdalectomia","C51687 - Apendicectomia","C51691 - Artroplastia","C46088 - Cesariana","C157809 - Cirurgia de Catarata","C51676 - Colecistectomia","C15209 - Colectomia","C51758 - Derivação Gastrojejunal","C3046 - Fratura","C15236 - Gastrectomia","C51583 - Gastrectomia Subtotal","C92946 - Gravidez tubária","C86589 - Hábito de vida sedentário","C34690 - Hérnia Inguinal","C86074 - Hemicolectomia","C168249 - Herniorrafia","C15256 - Histerectomia","C92901 - Laqueadura tubária","C34753 - Lesão no joelho","C15277 - Mastectomia","C51645 - Miomectomia uterina","C15284 - Nefrectomia","C114667_2 - Nefrolitíase","C83000 - Objeto metálico","C15294 - Pancreatectomia","C80430 - Procedimento Cardíaco","C15307 - Prostatectomia","C157778 - Reparo de Aneurisma Abdominal Aberto","C157839 - Reparo de Aneurisma Endovascular","C164212 - Ressecção de Tumor","C51998 - Revascularização do Miocárdio","C51605 - Salpingectomia","C91838 - Sigmoidectomia","C51762 - Tiroidectomia total","C15342 - Transplante")
levels(data$c18772.factor)=c("Iliac Fossa","Lacks Appetite","Feel Tired","Feel Irritable","Have Dry Mouth","Right Arm","GDS - Feel Downhearted and Blue","GDS-SF - Feel Full of Energy","Insulin Resistance","Discomfort or Pain When Eating","Loss of Appetite","Have Hair Loss","Mood Lability","About Once Weekly","Uterus","Pain Distress","Pattern of Bowel Movements","Tongue","Bothered by Forgetfulness","Feel Discouraged or Down in Dumps","Back","Feel Tired When Wake Up","Bothered by Tiredness","Bowel Problems Frequency","Hypertext","Helicobacter pylori","Dry Mouth, CTCAE","Surgical Procedure","Hypertensive Heart Disease","Knee Arthroscopy","Hypertension Absent","Frontal","Increased","Systolic Heart Murmur","Family History of Heart Disease","Pain in Epigastrium","Missed Taking Medicine","PRO-CTCAE V1.0 - Discouraged Severity","Menstrual Phase","How Often Drink Soda or Pop that Contains Sugar","COVID-19 Complication","COVID-19 Symptom Status","Forget Things Easily","Knee-Chest Position","Hypertensive Urgency","One to Three Times a Month","Appetite","Polypectomy","Daily","Dryness","Intensity","Abdominal Pain","Acanthosis Nigricans","Anxiety","Dyspepsia","Pharyngitis","Dysgeusia","Paresthesia","Depression","Diarrhea","Edema","Hepatomegaly","Hot Flashes","Hypertension","Hypertensive Crisis","Arm","Menopause","Nausea","Nodule","Knee Joint","Pain","Peptic Ulcer","Plantar Fascia","Abdominal Cramp","Accident","Dengue Fever","Foot Pain","Hand Injury","Headache","Heartburn","Hip Pain","Knee Injury","Leg Pain","Metrorrhagia","Panic Disorder","Gestational Diabetes","Shoulder Pain","Accidental Injury","Lower Abdominal Pain","Steatosis","Injury","Constipation","Dizziness","Flatulence","Back Pain","Gestational Hypertension","Arthralgia","Distension","Fasciitis","Pallor","Paresis","Strong","Twice Daily","Three Times Daily","Three Times Weekly","After Meals","Morning","Infrequent","Severe","Better","Temporal","Sadness","Abdominal Distension","Edema Limbs","Cheilitis","Suicide Attempt","Dyslipidemia","Heart Murmur","Iron-Deficiency Anemia","Fibromyalgia","Sometimes","Acute Pancreatitis","Sleepiness","Tendonitis","Anasarca","Four Times Monthly","PHQ-15 - Menstrual Cramp or Other Problems with Your Periods","Feel Tired","Dengue Virus","Skin Bruise","Trouble Sleeping, Waking Up in the Middle of the Night or Early Morning","Feel Anxious","Feel Angry","Bothered by Tiredness","Helicobacter pylori","Upper Respiratory Infection, CTCAE","Oophorectomy","Menstrual Cycle","Other","Left Leg","Swallowing is Painful","Social Isolation","Pain Origin","Daily","Isolation","Abdominal Pain","Anxiety","Insomnia","Diarrhea","Edema","Hepatitis C Infection","Ankle Joint","Lymphoma","Menstruation","Knee Joint","Ovarian Cyst","Pain","Pneumonia","Thyroid Gland Nodule","Dengue Fever","Foot Pain","Headache","Heartburn","Hip Pain","Knee Injury","Leg Pain","Rhinitis","Shoulder Pain","Sinusitis","Back Pain","Absent","Fall","Partial Thyroidectomy","Flu-Like Syndrome, CTCAE","Study Start Date","Abdominal Distension","Bloating","Suicide Attempt","Migraine","Lacks Energy","Hodgkin Lymphoma","Binge Eating")
levels(data$c65140_2.factor)=c("Ano(s)","Dia(s)","Mês(es)","Semana(s)")
levels(data$antecedentes_pessoais_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$c4876_yn.factor)=c("Não","Sim")
levels(data$c4876_yn_2.factor)=c("Não","Sim")
levels(data$c4876.factor)=c("Iliac Fossa","Lacks Appetite","Feel Tired","Feel Irritable","Have Dry Mouth","Right Arm","GDS - Feel Downhearted and Blue","GDS-SF - Feel Full of Energy","Insulin Resistance","Discomfort or Pain When Eating","Loss of Appetite","Have Hair Loss","Mood Lability","About Once Weekly","Uterus","Pain Distress","Pattern of Bowel Movements","Tongue","Bothered by Forgetfulness","Feel Discouraged or Down in Dumps","Back","Feel Tired When Wake Up","Bothered by Tiredness","Bowel Problems Frequency","Hypertext","Helicobacter pylori","Dry Mouth, CTCAE","Surgical Procedure","Hypertensive Heart Disease","Knee Arthroscopy","Hypertension Absent","Frontal","Increased","Systolic Heart Murmur","Family History of Heart Disease","Pain in Epigastrium","Missed Taking Medicine","PRO-CTCAE V1.0 - Discouraged Severity","Menstrual Phase","How Often Drink Soda or Pop that Contains Sugar","COVID-19 Complication","COVID-19 Symptom Status","Forget Things Easily","Knee-Chest Position","Hypertensive Urgency","One to Three Times a Month","Appetite","Polypectomy","Daily","Dryness","Intensity","Abdominal Pain","Acanthosis Nigricans","Anxiety","Dyspepsia","Pharyngitis","Dysgeusia","Paresthesia","Depression","Diarrhea","Edema","Hepatomegaly","Hot Flashes","Hypertension","Hypertensive Crisis","Arm","Menopause","Nausea","Nodule","Knee Joint","Pain","Peptic Ulcer","Plantar Fascia","Abdominal Cramp","Accident","Dengue Fever","Foot Pain","Hand Injury","Headache","Heartburn","Hip Pain","Knee Injury","Leg Pain","Metrorrhagia","Panic Disorder","Gestational Diabetes","Shoulder Pain","Accidental Injury","Lower Abdominal Pain","Steatosis","Injury","Constipation","Dizziness","Flatulence","Back Pain","Gestational Hypertension","Arthralgia","Distension","Fasciitis","Pallor","Paresis","Strong","Twice Daily","Three Times Daily","Three Times Weekly","After Meals","Morning","Infrequent","Severe","Better","Temporal","Sadness","Abdominal Distension","Edema Limbs","Cheilitis","Suicide Attempt","Dyslipidemia","Heart Murmur","Iron-Deficiency Anemia","Fibromyalgia","Sometimes","Acute Pancreatitis","Sleepiness","Tendonitis","Anasarca","Four Times Monthly","PHQ-15 - Menstrual Cramp or Other Problems with Your Periods","Feel Tired","Dengue Virus","Skin Bruise","Trouble Sleeping, Waking Up in the Middle of the Night or Early Morning","Feel Anxious","Feel Angry","Bothered by Tiredness","Helicobacter pylori","Upper Respiratory Infection, CTCAE","Oophorectomy","Menstrual Cycle","Other","Left Leg","Swallowing is Painful","Social Isolation","Pain Origin","Daily","Isolation","Abdominal Pain","Anxiety","Insomnia","Diarrhea","Edema","Hepatitis C Infection","Ankle Joint","Lymphoma","Menstruation","Knee Joint","Ovarian Cyst","Pain","Pneumonia","Thyroid Gland Nodule","Dengue Fever","Foot Pain","Headache","Heartburn","Hip Pain","Knee Injury","Leg Pain","Rhinitis","Shoulder Pain","Sinusitis","Back Pain","Absent","Fall","Partial Thyroidectomy","Flu-Like Syndrome, CTCAE","Study Start Date","Abdominal Distension","Bloating","Suicide Attempt","Migraine","Lacks Energy","Hodgkin Lymphoma","Binge Eating")
levels(data$c25685.factor)=c("Iliac Fossa","Lacks Appetite","Feel Tired","Feel Irritable","Have Dry Mouth","Right Arm","GDS - Feel Downhearted and Blue","GDS-SF - Feel Full of Energy","Insulin Resistance","Discomfort or Pain When Eating","Loss of Appetite","Have Hair Loss","Mood Lability","About Once Weekly","Uterus","Pain Distress","Pattern of Bowel Movements","Tongue","Bothered by Forgetfulness","Feel Discouraged or Down in Dumps","Back","Feel Tired When Wake Up","Bothered by Tiredness","Bowel Problems Frequency","Hypertext","Helicobacter pylori","Dry Mouth, CTCAE","Surgical Procedure","Hypertensive Heart Disease","Knee Arthroscopy","Hypertension Absent","Frontal","Increased","Systolic Heart Murmur","Family History of Heart Disease","Pain in Epigastrium","Missed Taking Medicine","PRO-CTCAE V1.0 - Discouraged Severity","Menstrual Phase","How Often Drink Soda or Pop that Contains Sugar","COVID-19 Complication","COVID-19 Symptom Status","Forget Things Easily","Knee-Chest Position","Hypertensive Urgency","One to Three Times a Month","Appetite","Polypectomy","Daily","Dryness","Intensity","Abdominal Pain","Acanthosis Nigricans","Anxiety","Dyspepsia","Pharyngitis","Dysgeusia","Paresthesia","Depression","Diarrhea","Edema","Hepatomegaly","Hot Flashes","Hypertension","Hypertensive Crisis","Arm","Menopause","Nausea","Nodule","Knee Joint","Pain","Peptic Ulcer","Plantar Fascia","Abdominal Cramp","Accident","Dengue Fever","Foot Pain","Hand Injury","Headache","Heartburn","Hip Pain","Knee Injury","Leg Pain","Metrorrhagia","Panic Disorder","Gestational Diabetes","Shoulder Pain","Accidental Injury","Lower Abdominal Pain","Steatosis","Injury","Constipation","Dizziness","Flatulence","Back Pain","Gestational Hypertension","Arthralgia","Distension","Fasciitis","Pallor","Paresis","Strong","Twice Daily","Three Times Daily","Three Times Weekly","After Meals","Morning","Infrequent","Severe","Better","Temporal","Sadness","Abdominal Distension","Edema Limbs","Cheilitis","Suicide Attempt","Dyslipidemia","Heart Murmur","Iron-Deficiency Anemia","Fibromyalgia","Sometimes","Acute Pancreatitis","Sleepiness","Tendonitis","Anasarca","Four Times Monthly","PHQ-15 - Menstrual Cramp or Other Problems with Your Periods","Feel Tired","Dengue Virus","Skin Bruise","Trouble Sleeping, Waking Up in the Middle of the Night or Early Morning","Feel Anxious","Feel Angry","Bothered by Tiredness","Helicobacter pylori","Upper Respiratory Infection, CTCAE","Oophorectomy","Menstrual Cycle","Other","Left Leg","Swallowing is Painful","Social Isolation","Pain Origin","Daily","Isolation","Abdominal Pain","Anxiety","Insomnia","Diarrhea","Edema","Hepatitis C Infection","Ankle Joint","Lymphoma","Menstruation","Knee Joint","Ovarian Cyst","Pain","Pneumonia","Thyroid Gland Nodule","Dengue Fever","Foot Pain","Headache","Heartburn","Hip Pain","Knee Injury","Leg Pain","Rhinitis","Shoulder Pain","Sinusitis","Back Pain","Absent","Fall","Partial Thyroidectomy","Flu-Like Syndrome, CTCAE","Study Start Date","Abdominal Distension","Bloating","Suicide Attempt","Migraine","Lacks Energy","Hodgkin Lymphoma","Binge Eating")
levels(data$c124353_unitoftime.factor)=c("Year","Day","Month","Week")
levels(data$c25471.factor)=c("Resolved","Current")
levels(data$c178992_unitoftime.factor)=c("Year","Day","Month","Week")
levels(data$c41332.factor)=c("Not related","Unlikely related","Possibly related","Related")
levels(data$sintomas_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$phyex_finding_yn.factor)=c("Não","Sim")
levels(data$phyex_finding_yn_2.factor)=c("Não","Sim")
levels(data$c25305_system.factor)=c("General Appearance (NCIT: c87079)","Oral Examination (NCIT: c163004)","Skin Examination (NCIT: c168436)","Cardiovascular Examination (NCIT: c122008)","Respiratory System Examination (NCIT: c198356)","Abdominal Examination (NCIT: c167415)","Examination of Extremities (NCIT: c168189)")
levels(data$c87079.factor)=c("Dehydration","Pallor")
levels(data$c163004.factor)=c("Cheilitis","Glossitis")
levels(data$c168436.factor)=c("Acanthosis Nigricans","Dermatitis","Erythema")
levels(data$c122008.factor)=c("Decreased exercise tolerance","Dyspnea (on exertion, at rest, orthopnea, or paroxysmal nocturnal dyspnea)","Fatigue (unusual tiredness and inability to perform usual activities)","Volume overload","Systolic Heart Murmur","Diastolic Heart Murmur")
levels(data$c198356.factor)=c("Lungs Clear on Auscultation","Rales","Decreased Breath Sounds","Rhonchi","Wheezing","Basilar Rales / crackel","Pleural Friction Rub","Absent Breath Sounds","Other")
levels(data$c167415.factor)=c("Abdominal Auscultation Finding","Abdominal Pain","Abdominal Palpation Finding","Abdominal Visual Inspection","Hepatomegaly","Abdominal Hernia")
levels(data$c168189.factor)=c("Edema","Delayed Capillary Refill Time")
levels(data$c83023.factor)=c("Iliac Fossa","Lacks Appetite","Feel Tired","Feel Irritable","Have Dry Mouth","Right Arm","GDS - Feel Downhearted and Blue","GDS-SF - Feel Full of Energy","Insulin Resistance","Discomfort or Pain When Eating","Loss of Appetite","Have Hair Loss","Mood Lability","About Once Weekly","Uterus","Pain Distress","Pattern of Bowel Movements","Tongue","Bothered by Forgetfulness","Feel Discouraged or Down in Dumps","Back","Feel Tired When Wake Up","Bothered by Tiredness","Bowel Problems Frequency","Hypertext","Helicobacter pylori","Dry Mouth, CTCAE","Surgical Procedure","Hypertensive Heart Disease","Knee Arthroscopy","Hypertension Absent","Frontal","Increased","Systolic Heart Murmur","Family History of Heart Disease","Pain in Epigastrium","Missed Taking Medicine","PRO-CTCAE V1.0 - Discouraged Severity","Menstrual Phase","How Often Drink Soda or Pop that Contains Sugar","COVID-19 Complication","COVID-19 Symptom Status","Forget Things Easily","Knee-Chest Position","Hypertensive Urgency","One to Three Times a Month","Appetite","Polypectomy","Daily","Dryness","Intensity","Abdominal Pain","Acanthosis Nigricans","Anxiety","Dyspepsia","Pharyngitis","Dysgeusia","Paresthesia","Depression","Diarrhea","Edema","Hepatomegaly","Hot Flashes","Hypertension","Hypertensive Crisis","Arm","Menopause","Nausea","Nodule","Knee Joint","Pain","Peptic Ulcer","Plantar Fascia","Abdominal Cramp","Accident","Dengue Fever","Foot Pain","Hand Injury","Headache","Heartburn","Hip Pain","Knee Injury","Leg Pain","Metrorrhagia","Panic Disorder","Gestational Diabetes","Shoulder Pain","Accidental Injury","Lower Abdominal Pain","Steatosis","Injury","Constipation","Dizziness","Flatulence","Back Pain","Gestational Hypertension","Arthralgia","Distension","Fasciitis","Pallor","Paresis","Strong","Twice Daily","Three Times Daily","Three Times Weekly","After Meals","Morning","Infrequent","Severe","Better","Temporal","Sadness","Abdominal Distension","Edema Limbs","Cheilitis","Suicide Attempt","Dyslipidemia","Heart Murmur","Iron-Deficiency Anemia","Fibromyalgia","Sometimes","Acute Pancreatitis","Sleepiness","Tendonitis","Anasarca","Four Times Monthly","PHQ-15 - Menstrual Cramp or Other Problems with Your Periods","Feel Tired","Dengue Virus","Skin Bruise","Trouble Sleeping, Waking Up in the Middle of the Night or Early Morning","Feel Anxious","Feel Angry","Bothered by Tiredness","Helicobacter pylori","Upper Respiratory Infection, CTCAE","Oophorectomy","Menstrual Cycle","Other","Left Leg","Swallowing is Painful","Social Isolation","Pain Origin","Daily","Isolation","Abdominal Pain","Anxiety","Insomnia","Diarrhea","Edema","Hepatitis C Infection","Ankle Joint","Lymphoma","Menstruation","Knee Joint","Ovarian Cyst","Pain","Pneumonia","Thyroid Gland Nodule","Dengue Fever","Foot Pain","Headache","Heartburn","Hip Pain","Knee Injury","Leg Pain","Rhinitis","Shoulder Pain","Sinusitis","Back Pain","Absent","Fall","Partial Thyroidectomy","Flu-Like Syndrome, CTCAE","Study Start Date","Abdominal Distension","Bloating","Suicide Attempt","Migraine","Lacks Energy","Hodgkin Lymphoma","Binge Eating")
levels(data$exame_fsico_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$lab_list_yn.factor)=c("Não","Sim")
levels(data$eleg2_whichlab.factor)=c("ESF I - VILA REIS (Gilberto Rinaldi)","ESF II - BOM JESUS (Nelson Pereira Lima)","ESF III - ILHA GRANDE (João Pegoraro)","ESF IV - JURUCÊ (Sarandy)","ESF V - VILA PAULISTA (Joao Augusto dos Reis)","ESF VI - MORUMBI (Antonio Jacomini)","ESF VII - CESAR CAPATO (Doutor Francisco Xavier Toda Filho)","UBS - SANTA JULIA (Ruth Rodrigues de Pereira)","UBS - VILA REIS (Dr Pedro Saud)","UBS - MORUMBI","CENTRO DE SAÚDE")
levels(data$c17479.factor)=c("Negativo","Positivo")
levels(data$other_lab_yn.factor)=c("Não","Sim")
levels(data$lab_chk.factor)=c("Não","Sim")
levels(data$exames_laboratoriais_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$ecg_done.factor)=c("Sim","Não")
levels(data$ecg_standard.factor)=c("Não","Sim")
levels(data$c87081.factor)=c("Sinus Rhythm","Atrial fibrilation","Atrial flutter","Ventricular arrhythmia","Supraventricular tachycardia","Paced rhythm","Other")
levels(data$c168100___0.factor)=c("Unchecked","Checked")
levels(data$c168100___c62269.factor)=c("Unchecked","Checked")
levels(data$c168100___c62270.factor)=c("Unchecked","Checked")
levels(data$c168100___c26703.factor)=c("Unchecked","Checked")
levels(data$c168100___c71026.factor)=c("Unchecked","Checked")
levels(data$c168100___c191644.factor)=c("Unchecked","Checked")
levels(data$c168100___c62271.factor)=c("Unchecked","Checked")
levels(data$c168100___ni.factor)=c("Unchecked","Checked")
levels(data$c168100___unk.factor)=c("Unchecked","Checked")
levels(data$c168100___nask.factor)=c("Unchecked","Checked")
levels(data$c168100___asku.factor)=c("Unchecked","Checked")
levels(data$c168100___inv.factor)=c("Unchecked","Checked")
levels(data$c168100___na.factor)=c("Unchecked","Checked")
levels(data$ecg_audit.factor)=c("Não","Sim")
levels(data$c117807.factor)=c("Excellent Quality: ECG traces in this category exhibit optimal technical quality with clear and well-defined waveforms. These are free from artifacts and noise, making them easy to interpret.","Good Quality: ECG traces in this category are generally clear and mostly free from artifacts. While there may be minor noise or interference, it does not significantly affect the interpretation.","Fair Quality: ECG traces in this category may have some noticeable artifacts or noise, but the primary waveform components (P-waves, QRS complexes, and T-waves) are still distinguishable, allowing for reasonable interpretation.","Marginal Quality: ECG traces in this category have significant artifacts or interference that can obscure important waveforms. Interpretation may be challenging, and further testing or adjustments may be necessary to obtain a clearer signal.","Poor Quality: ECG traces in this category are severely degraded by artifacts, noise, or technical issues. The primary waveforms are nearly or entirely obscured, making interpretation difficult or impossible.")
levels(data$ecg_checked_yn.factor)=c("No","Yes")
levels(data$ecg_metadata_yn.factor)=c("Não","Sim")
levels(data$eletrocardiograma_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$adhere_1.factor)=c("Não","Sim")
levels(data$adhere_2.factor)=c("6 cápsulas ao dia (2 cápsulas com café da manhã, 2 com almoço e 2 com o jantar)","6 cápsulas ao dia, em outros horários","3 cápsulas ao dia (1 cápsula com café da manhã, 1 com almoço e 1 com o jantar)","3 cápsulas ao dia, em outros horários","Outros (especifique)")
levels(data$adhere_3.factor)=c("Alarme no celular","Caixa de remédios com divisórias para cada horário","Lembrete escrito em um calendário","Outro (especificar)")
levels(data$adhere_4.factor)=c("Não","Sim")
levels(data$adhere_4_1.factor)=c("1 vez","2 vezes","3 a 5 vezes","5 a 10 vezes","mais de 10 vezes")
levels(data$adhere_4_2.factor)=c("Com o café da manhã","Com o almoço","Com o jantar","Outro (especificar)")
levels(data$adhere_5.factor)=c("Não","Sim")
levels(data$adhere_5_1.factor)=c("1 dia","2 dias","3 a 5 dias","5 a 10 dias","mais de 10 dias")
levels(data$adhere_5_2.factor)=c("Efeito colateral","Esquecimento","Dificuldade em seguir horários","Outro (especificar)")
levels(data$adhere_6.factor)=c("Não","Sim")
levels(data$adhere_7.factor)=c("Não","Sim")
levels(data$adhere_8.factor)=c("Não","Sim")
levels(data$adhere_10.factor)=c("Não","Sim")
levels(data$adhere_12.factor)=c("Ruim","Regular","Boa","Excelente")
levels(data$adeso_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$ae_yes_no.factor)=c("Não","Sim")
levels(data$sae.factor)=c("Não","Sim")
levels(data$adverse_event.factor)=c("Iliac Fossa","Lacks Appetite","Feel Tired","Feel Irritable","Have Dry Mouth","Right Arm","GDS - Feel Downhearted and Blue","GDS-SF - Feel Full of Energy","Insulin Resistance","Discomfort or Pain When Eating","Loss of Appetite","Have Hair Loss","Mood Lability","About Once Weekly","Uterus","Pain Distress","Pattern of Bowel Movements","Tongue","Bothered by Forgetfulness","Feel Discouraged or Down in Dumps","Back","Feel Tired When Wake Up","Bothered by Tiredness","Bowel Problems Frequency","Hypertext","Helicobacter pylori","Dry Mouth, CTCAE","Surgical Procedure","Hypertensive Heart Disease","Knee Arthroscopy","Hypertension Absent","Frontal","Increased","Systolic Heart Murmur","Family History of Heart Disease","Pain in Epigastrium","Missed Taking Medicine","PRO-CTCAE V1.0 - Discouraged Severity","Menstrual Phase","How Often Drink Soda or Pop that Contains Sugar","COVID-19 Complication","COVID-19 Symptom Status","Forget Things Easily","Knee-Chest Position","Hypertensive Urgency","One to Three Times a Month","Appetite","Polypectomy","Daily","Dryness","Intensity","Abdominal Pain","Acanthosis Nigricans","Anxiety","Dyspepsia","Pharyngitis","Dysgeusia","Paresthesia","Depression","Diarrhea","Edema","Hepatomegaly","Hot Flashes","Hypertension","Hypertensive Crisis","Arm","Menopause","Nausea","Nodule","Knee Joint","Pain","Peptic Ulcer","Plantar Fascia","Abdominal Cramp","Accident","Dengue Fever","Foot Pain","Hand Injury","Headache","Heartburn","Hip Pain","Knee Injury","Leg Pain","Metrorrhagia","Panic Disorder","Gestational Diabetes","Shoulder Pain","Accidental Injury","Lower Abdominal Pain","Steatosis","Injury","Constipation","Dizziness","Flatulence","Back Pain","Gestational Hypertension","Arthralgia","Distension","Fasciitis","Pallor","Paresis","Strong","Twice Daily","Three Times Daily","Three Times Weekly","After Meals","Morning","Infrequent","Severe","Better","Temporal","Sadness","Abdominal Distension","Edema Limbs","Cheilitis","Suicide Attempt","Dyslipidemia","Heart Murmur","Iron-Deficiency Anemia","Fibromyalgia","Sometimes","Acute Pancreatitis","Sleepiness","Tendonitis","Anasarca","Four Times Monthly","PHQ-15 - Menstrual Cramp or Other Problems with Your Periods","Feel Tired","Dengue Virus","Skin Bruise","Trouble Sleeping, Waking Up in the Middle of the Night or Early Morning","Feel Anxious","Feel Angry","Bothered by Tiredness","Helicobacter pylori","Upper Respiratory Infection, CTCAE","Oophorectomy","Menstrual Cycle","Other","Left Leg","Swallowing is Painful","Social Isolation","Pain Origin","Daily","Isolation","Abdominal Pain","Anxiety","Insomnia","Diarrhea","Edema","Hepatitis C Infection","Ankle Joint","Lymphoma","Menstruation","Knee Joint","Ovarian Cyst","Pain","Pneumonia","Thyroid Gland Nodule","Dengue Fever","Foot Pain","Headache","Heartburn","Hip Pain","Knee Injury","Leg Pain","Rhinitis","Shoulder Pain","Sinusitis","Back Pain","Absent","Fall","Partial Thyroidectomy","Flu-Like Syndrome, CTCAE","Study Start Date","Abdominal Distension","Bloating","Suicide Attempt","Migraine","Lacks Energy","Hodgkin Lymphoma","Binge Eating")
levels(data$aes.factor)=c("Alergia/Imunologia","Auditivo/Ouvido","Sangue/Medula Óssea","Arritmia Cardíaca","Cardíaco Geral","Coagulação","Sintomas Constitucionais","Óbito/Morte","Dermatologia/Pele","Endócrino","Gastrointestinal","Crescimento e Desenvolvimento","Hemorragia/Sangramento","Hepatobiliar/Pâncreas","Infecção","Linfáticos","Metabólico/Laboratorial","Musculoesquelético/Tecido Conjuntivo","Neurologia","Ocular/Visual","Dor","Pulmonar/Trato Respiratório Superior","Renal/Geniturinário","Neoplasia Secundária","Função Sexual/Reprodutiva","Síndromes","Vascular","Psiquiátrico","Outros")
levels(data$grade.factor)=c("1 Mild AE","2 Moderate AE","3 Severe AE","4 Life-threatening or disabling AE","5 Death related to AE")
levels(data$attribution.factor)=c("Não Relacionado","Improvável","Possível","Provável","Definitivo")
levels(data$action_taken.factor)=c("Nenhuma","Dose Reduzida","Terapia Interrompida","Excluído do estudo")
levels(data$seguimento.factor)=c("1. Resolvido","2. Resolvido com sequela","3. Não resolvido","4. Disfunção")
levels(data$additional_aes.factor)=c("Não","Sim")
levels(data$eventos_adversos_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$bia_diuretic.factor)=c("Não","Sim")
levels(data$bia_dosechange.factor)=c("Não","Sim")
levels(data$bia_menses.factor)=c("N","S")
levels(data$bia_mensesreg.factor)=c("N","S")
levels(data$md_drugs.factor)=c("Não","Sim")
levels(data$md_show_pipelab.factor)=c("Não","Sim")
levels(data$md_labs.factor)=c("Não","Sim")
levels(data$md_labs_chked.factor)=c("Não","Sim")
levels(data$md_labs_find.factor)=c("Não","Sim")
levels(data$md_bottle.factor)=c("Não","Sim")
levels(data$md_deliver.factor)=c("Não","Sim")
levels(data$md_explain.factor)=c("Não","Sim")
levels(data$md_explainchk.factor)=c("Não","Sim")
levels(data$c133396_labsdelay.factor)=c("Não","Sim")
levels(data$md_mng_yn.factor)=c("Não","Sim")
levels(data$avaliao_mdica_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$wk_datetime1_yn.factor)=c("Não","Sim")
levels(data$wk_datetime2_yn.factor)=c("Não","Sim")
levels(data$wk_datetime3_yn.factor)=c("Não","Sim")
levels(data$wk_datetime4_yn.factor)=c("Não","Sim")
levels(data$wk_datetime5_yn.factor)=c("Não","Sim")
levels(data$wk_datetime6_yn.factor)=c("Não","Sim")
levels(data$wk_datetime7_yn.factor)=c("Não","Sim")
levels(data$wk_datetime8_yn.factor)=c("Não","Sim")
levels(data$wk_datetime9_yn.factor)=c("Não","Sim")
levels(data$wk_datetime10_yn.factor)=c("Não","Sim")
levels(data$wk_safety.factor)=c("Não","Sim")
levels(data$wk_c25471.factor)=c("Não tenho mais os sintomas","Ainda tenho os sintomas")
levels(data$wk_adherence.factor)=c("Não","Sim")
levels(data$wk_lostdose.factor)=c("Não","Sim, esqueci 1 dose","Sim, esqueci entre 2 a 4 doses","Sim, esqueci 5 ou mais doses")
levels(data$wk_question_yn.factor)=c("Não","Sim")
levels(data$wk_question_chk.factor)=c("Não","Sim")
levels(data$contato_semanal_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$c25250.factor)=c("Não","Sim","Ainda não")
levels(data$c66727.factor)=c("Evento adverso","Óbito","Falha em atender aos critérios de continuação","Falta de eficácia","Problema logístico com o estudo clínico","Perda de seguimento","Participante atendeu aos critérios de elegibilidade, mas não era mais necessário","Não está se beneficiando clinicamente","Baixa adesão ao medicamento em estudo","Baixa adesão ao cronograma do estudo","Gravidez do parceiro","Decisão médica","Participante grávida","Progressão de doença","Desvio do protocolo","Violação do protocolo","Participante atendeu a critério de exclusão","Participante necesside deee medicação excludente","Falha na triagem do estudo","Triagem não concluída","Participante removido a pedido do patrocinador","Estudo encerrado pelo patrocinador","Problema técnico","Retirada pelo participante","Consentimento do estudo retirado","Outro")
levels(data$conclusion_info.factor)=c("Não","Sim")
levels(data$c66727_action.factor)=c("Não","Sim, é necessário informar ao CEP","Sim, é necessário informar o Comitê de Monitoramento Externo")
levels(data$concluso_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$attachment_type.factor)=c("Consentimento informado","Documentos de identificação","Registros médicos e de saúde","Questionários e formulários preenchidos","Diários de sintomas ou registros pessoais feitos pelos participantes","Resultados de exames laboratoriais","Fotografias e imagens médicas","Recibos ou comprovantes de reembolsos","Eventos adversos e relatórios de reações: Registros de eventos adversos, reações ou efeitos colaterais relatados pelos participantes durante o estudo.","Comunicações com os pesquisadores (e-mails, mensagens ou outros registros de comunicação)","Autorizações adicionais","Questionários de follow-up (após a conclusão do estudo)","Outros")
levels(data$anexos_complete.factor)=c("Incomplete","Unverified","Complete")
