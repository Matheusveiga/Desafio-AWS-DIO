# RELATORIO DE IMPLEMENTAÇÃO DE SERVIÇOS AWS

Data: 14/08/2025
Empresa: DrogaFarma
Responsável: Matheus Veiga

## Introdução
Este relatório apresenta o processo de implementação de ferramentas na empresa **DrogaFarma**, do setor farmacêutico com atuação em distribuição.  
O objetivo do projeto foi:
* elencar 3 serviços AWS capazes de reduzir custos operacionais
* otimizar processos logísticos e administrativos sem aumentar a carga de infraestrutura

## Descrição do Projeto
O projeto de implementação de ferramentas foi dividido em 3 etapas, cada uma com seus objetivos específicos.  
A seguir, serão descritas as etapas do projeto:

---

Etapa 1:  
- **Nome da ferramenta:** Amazon S3  
- **Foco da ferramenta:** Armazenamento escalável e de baixo custo; distribuição de arquivos estáticos.  
- **Descrição de caso de uso:** Centralizar documentos regulatórios (ANVISA), NF-e, catálogos, relatórios de distribuição e *backups* do ERP/WMS, substituindo *file servers* locais e eliminando *tapes*.  
- **Benefícios (redução de custos):**
  - Paga-se apenas pelo que armazenar/transferir; uso de **Storage Classes** (Standard-IA, Intelligent-Tiering, Glacier/Deep Archive) e **Lifecycle** para arquivamento automático de dados frios.  
  - Elimina CAPEX com *storage* on-premises (hardware, energia, refrigeração) e custos de manutenção.  
  - Alta durabilidade e disponibilidade gerenciadas pela AWS, reduzindo despesas com soluções redundantes próprias.  
  - Integra-se ao CloudFront para diminuir custo de *egress* e aumentar desempenho no acesso.

---

Etapa 2:  
- **Nome da ferramenta:** AWS Lambda  
- **Foco da ferramenta:** Computação *serverless* sob demanda para automações logísticas e integrações.  
- **Descrição de caso de uso:** Automatizar processamento de pedidos, atualização de estoque, conciliação de notas, geração de etiquetas e acionamento de notificações para representantes e transportadoras.  
- **Benefícios (redução de custos):**
  - **Paga apenas pelo tempo de execução** (sem servidores ligados ociosos).  
  - **Escalabilidade automática** em picos de vendas, eliminando superprovisionamento.  
  - Menor custo de operação e manutenção de infraestrutura (patching, *monitoring*, *autoscaling*), liberando a equipe para tarefas de maior valor.  
  - Integra nativamente com S3, DynamoDB, EventBridge e API Gateway, reduzindo necessidade de serviços terceirizados.

---

Etapa 3:  
- **Nome da ferramenta:** Amazon CloudFront  
- **Foco da ferramenta:** CDN para distribuição rápida e segura de conteúdo estático e APIs.  
- **Descrição de caso de uso:** Entregar catálogos, manuais, fichas técnicas e portais B2B com baixa latência para representantes em todo o país, além de *caching* de respostas de APIs públicas.  
- **Benefícios (redução de custos):**
  - **Cache na borda** diminui tráfego e solicitações ao S3/origens (ALB, API Gateway), reduzindo custos de *egress* e de processamento no *backend*.  
  - Aumenta desempenho e disponibilidade sem necessidade de expandir infraestrutura central.  
  - Integra com **AWS WAF** e **ACM** para segurança e TLS gerenciados, evitando appliances e licenças caras.

---

## Conclusão
A implementação de ferramentas na empresa **DrogaFarma** tem como esperado mais eficiência, o que aumentará a eficiência e a produtividade da empresa. Recomenda-se a continuidade da utilização das ferramentas implementadas e a busca por novas tecnologias que possam melhorar ainda mais os processos da empresa.


Assinatura do Responsável pelo Projeto:

Matheus Veiga
