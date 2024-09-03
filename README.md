## Banco de Dados

Este sistema utiliza um banco de dados MySQL, que inclui as seguintes tabelas principais:

- **documento_vara**: Armazena documentos judiciais com referências a presos e juízes.
- **juiz**: Contém informações sobre os juízes, como nome e vara.
- **notificacao_sap**: Registra notificações relacionadas ao Sistema de Administração Penitenciária.
- **presos**: Informações sobre os presos, incluindo CPF, pena e local.
- **responsavel_sap**: Armazena dados dos responsáveis pelo SAP, com suas respectivas funções.
- **tornozeleira**: Detalhes sobre tornozeleiras eletrônicas, incluindo datas e eventos.
- **vara**: Informações sobre varas judiciais, como endereço e comarca.

### Relacionamentos:
- A tabela `documento_vara` se relaciona com `presos` e `juiz`.
- A tabela `notificacao_sap` se relaciona com `documento_vara`, `juiz`, `presos`, e `responsavel_sap`.
- A tabela `tornozeleira` se relaciona com `notificacao_sap`.
