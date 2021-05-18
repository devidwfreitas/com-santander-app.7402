.class public Ljzw;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljzv;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljzv;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Ljzw;->a:Ljzv;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Ljzw;->b:Ljava/lang/StringBuffer;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljzw;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 98
    iget-boolean v0, p0, Ljzw;->c:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Ljzw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 101
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Ljzw;->a:Ljzv;

    invoke-static {v0}, Ljzv;->a(Ljzv;)Lfwr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Ljzw;->a:Ljzv;

    invoke-static {v0}, Ljzv;->a(Ljzv;)Lfwr;

    move-result-object v0

    invoke-virtual {p0}, Ljzw;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwr;->setError(Lfvu;)V

    .line 150
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 105
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "arg1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iput-boolean v1, p0, Ljzw;->c:Z

    .line 109
    iget-object v0, p0, Ljzw;->a:Ljzv;

    invoke-static {v0}, Ljzv;->a(Ljzv;)Lfwr;

    move-result-object v0

    iget-object v1, p0, Ljzw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwr;->t(Ljava/lang/String;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const-string v0, "arg2"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iput-boolean v1, p0, Ljzw;->c:Z

    .line 112
    iget-object v0, p0, Ljzw;->a:Ljzv;

    invoke-static {v0}, Ljzv;->a(Ljzv;)Lfwr;

    move-result-object v0

    iget-object v1, p0, Ljzw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwr;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_2
    const-string v0, "arg5"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    iput-boolean v1, p0, Ljzw;->c:Z

    .line 115
    iget-object v0, p0, Ljzw;->a:Ljzv;

    invoke-static {v0}, Ljzv;->a(Ljzv;)Lfwr;

    move-result-object v0

    iget-object v1, p0, Ljzw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwr;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_3
    const-string v0, "arg3"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    iput-boolean v1, p0, Ljzw;->c:Z

    .line 120
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 123
    :try_start_0
    iget-object v1, p0, Ljzw;->b:Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 128
    iget-object v0, p0, Ljzw;->a:Ljzv;

    invoke-static {v0}, Ljzv;->a(Ljzv;)Lfwr;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lfwr;->p(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Ljzw;->a:Ljzv;

    invoke-static {v0}, Ljzv;->a(Ljzv;)Lfwr;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lfwr;->j(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Ljzw;->a:Ljzv;

    invoke-static {v0}, Ljzv;->a(Ljzv;)Lfwr;

    move-result-object v2

    array-length v0, v1

    if-le v0, v3, :cond_4

    const/4 v0, 0x2

    aget-object v0, v1, v0

    :goto_1
    invoke-virtual {v2, v0}, Lfwr;->w(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Ljzw;->a:Ljzv;

    invoke-static {v0}, Ljzv;->a(Ljzv;)Lfwr;

    move-result-object v2

    array-length v0, v1

    if-le v0, v4, :cond_5

    const/4 v0, 0x3

    aget-object v0, v1, v0

    :goto_2
    invoke-virtual {v2, v0}, Lfwr;->x(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 130
    :cond_4
    :try_start_1
    const-string v0, ""

    goto :goto_1

    .line 131
    :cond_5
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 135
    :cond_6
    const-string v0, "arg6"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 136
    iput-boolean v1, p0, Ljzw;->c:Z

    .line 137
    iget-object v0, p0, Ljzw;->a:Ljzv;

    invoke-static {v0}, Ljzv;->a(Ljzv;)Lfwr;

    move-result-object v0

    iget-object v1, p0, Ljzw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwr;->y(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_7
    const-string v0, "arg7"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iput-boolean v1, p0, Ljzw;->c:Z

    .line 140
    iget-object v0, p0, Ljzw;->a:Ljzv;

    invoke-static {v0}, Ljzv;->a(Ljzv;)Lfwr;

    move-result-object v0

    iget-object v1, p0, Ljzw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwr;->z(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 73
    const-string v0, "arg1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iput-boolean v1, p0, Ljzw;->c:Z

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljzw;->b:Ljava/lang/StringBuffer;

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v0, "arg2"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iput-boolean v1, p0, Ljzw;->c:Z

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljzw;->b:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 79
    :cond_2
    const-string v0, "arg3"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    iput-boolean v1, p0, Ljzw;->c:Z

    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljzw;->b:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 82
    :cond_3
    const-string v0, "arg5"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    iput-boolean v1, p0, Ljzw;->c:Z

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljzw;->b:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 85
    :cond_4
    const-string v0, "arg6"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    iput-boolean v1, p0, Ljzw;->c:Z

    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljzw;->b:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 88
    :cond_5
    const-string v0, "arg7"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iput-boolean v1, p0, Ljzw;->c:Z

    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljzw;->b:Ljava/lang/StringBuffer;

    goto :goto_0
.end method
