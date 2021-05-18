.class public Lfri;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfrh;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Lfrb;


# direct methods
.method public constructor <init>(Lfrh;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iput-object p1, p0, Lfri;->a:Lfrh;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 54
    iput-object v1, p0, Lfri;->b:Ljava/lang/StringBuffer;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfri;->c:Z

    .line 57
    iput-object v1, p0, Lfri;->h:Lfrb;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 79
    iget-boolean v0, p0, Lfri;->c:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lfri;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 82
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "agendamentos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lfri;->a:Lfrh;

    invoke-static {v0}, Lfrh;->a(Lfrh;)Lfrc;

    move-result-object v0

    invoke-virtual {v0}, Lfrc;->ai()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lfri;->h:Lfrb;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v0, "codCanalAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iput-boolean v1, p0, Lfri;->c:Z

    .line 92
    iget-object v0, p0, Lfri;->h:Lfrb;

    iget-object v1, p0, Lfri;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_2
    const-string v0, "codGrupoAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    iput-boolean v1, p0, Lfri;->c:Z

    .line 95
    iget-object v0, p0, Lfri;->h:Lfrb;

    iget-object v1, p0, Lfri;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_3
    const-string v0, "codStatusAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    iput-boolean v1, p0, Lfri;->c:Z

    .line 98
    iget-object v0, p0, Lfri;->h:Lfrb;

    iget-object v1, p0, Lfri;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->x(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_4
    const-string v0, "dataAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    iput-boolean v1, p0, Lfri;->c:Z

    .line 101
    iget-object v0, p0, Lfri;->h:Lfrb;

    iget-object v1, p0, Lfri;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->y(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_5
    const-string v0, "codSolicAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103
    iput-boolean v1, p0, Lfri;->c:Z

    .line 104
    iget-object v0, p0, Lfri;->h:Lfrb;

    iget-object v1, p0, Lfri;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->z(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_6
    const-string v0, "descTipoOpera"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    iput-boolean v1, p0, Lfri;->c:Z

    .line 107
    iget-object v0, p0, Lfri;->h:Lfrb;

    iget-object v1, p0, Lfri;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->A(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_7
    const-string v0, "horaAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 109
    iput-boolean v1, p0, Lfri;->c:Z

    .line 110
    iget-object v0, p0, Lfri;->h:Lfrb;

    iget-object v1, p0, Lfri;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->B(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_8
    const-string v0, "nomeTipoAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 112
    iput-boolean v1, p0, Lfri;->c:Z

    .line 113
    iget-object v0, p0, Lfri;->h:Lfrb;

    iget-object v1, p0, Lfri;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->C(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_9
    const-string v0, "numProtocoloAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 115
    iput-boolean v1, p0, Lfri;->c:Z

    .line 116
    iget-object v0, p0, Lfri;->h:Lfrb;

    iget-object v1, p0, Lfri;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->D(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_a
    const-string v0, "tipoAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 118
    iput-boolean v1, p0, Lfri;->c:Z

    .line 119
    iget-object v0, p0, Lfri;->h:Lfrb;

    iget-object v1, p0, Lfri;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->E(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_b
    const-string v0, "valorAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 121
    iput-boolean v1, p0, Lfri;->c:Z

    .line 126
    iget-object v0, p0, Lfri;->h:Lfrb;

    iget-object v1, p0, Lfri;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->F(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :cond_c
    const-string v0, "descStatusAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 128
    iput-boolean v1, p0, Lfri;->c:Z

    .line 129
    iget-object v0, p0, Lfri;->h:Lfrb;

    iget-object v1, p0, Lfri;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->G(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :cond_d
    const-string v0, "dataSolicAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iput-boolean v1, p0, Lfri;->c:Z

    .line 132
    iget-object v0, p0, Lfri;->h:Lfrb;

    iget-object v1, p0, Lfri;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->H(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 62
    const-string v0, "agendamentos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lfrb;

    invoke-direct {v0}, Lfrb;-><init>()V

    iput-object v0, p0, Lfri;->h:Lfrb;

    .line 66
    :cond_0
    const-string v0, "codCanalAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codGrupoAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codStatusAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataAgendto"

    .line 67
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codSolicAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "descTipoOpera"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "horaAgendto"

    .line 68
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nomeTipoAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "numProtocoloAgendto"

    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tipoAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "valorAgendto"

    .line 70
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "descStatusAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataSolicAgendto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfri;->c:Z

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lfri;->b:Ljava/lang/StringBuffer;

    .line 74
    :cond_2
    return-void
.end method
