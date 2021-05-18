.class public Ljcd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:J = 0x100L

.field public static final e:Ljava/lang/String; = "incorrect authentication"

.field private static final f:Ljava/lang/String; = "ConnectionControler"

.field private static final g:I = 0x7530

.field private static final h:I = 0x7530

.field private static final i:I = 0x3

.field private static final j:I = 0x1388

.field private static final k:I = 0x3

.field private static final l:I = 0x1388

.field private static final m:I = 0x3

.field private static final n:I = 0x1388

.field private static final o:Ljava/lang/String; = "Dispositivo com conex\u00e3o inst\u00e1vel ou sem acesso \u00e0 internet. Verifique se sua conex\u00e3o est\u00e1 dispon\u00edvel. Por favor acesse novamente."

.field private static final p:Ljava/lang/String; = "Dispositivo com conex\u00e3o inst\u00e1vel ou sem acesso \u00e0 internet. Verifique se sua conex\u00e3o est\u00e1 dispon\u00edvel. Por favor acesse novamente."

.field private static final q:Ljava/lang/String; = "Dispositivo com conex\u00e3o inst\u00e1vel ou sem acesso \u00e0 internet. Verifique se sua conex\u00e3o est\u00e1 dispon\u00edvel. Por favor acesse novamente."

.field private static final r:Ljava/lang/String; = "Dispositivo com conex\u00e3o inst\u00e1vel ou sem acesso \u00e0 internet. Verifique se sua conex\u00e3o est\u00e1 dispon\u00edvel. Por favor acesse novamente."

.field private static s:Ljavax/net/ssl/SSLContext; = null

.field private static t:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static u:Lnaf; = null

.field private static final v:Ljava/lang/String; = "error sessao"

.field private static final w:Ljava/lang/String; = "Ocorreu um erro de valida\u00e7\u00e3o. Por favor, entre em contato com a Central de Atendimento."

.field private static final x:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-object v0, Ljcd;->s:Ljavax/net/ssl/SSLContext;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljcd;->t:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    sput-object v0, Ljcd;->u:Lnaf;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Ljcd;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljcd;->a:Ljava/util/Set;

    .line 152
    sget-object v0, Ljcd;->a:Ljava/util/Set;

    const-string v1, "tokenSession"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Ljcd;->a:Ljava/util/Set;

    const-string v1, "tokenSessao"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Ljcd;->a:Ljava/util/Set;

    const-string v1, "tokenTransacao"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Ljcd;->a:Ljava/util/Set;

    const-string v1, "tokenTransacaoHub"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Ljcd;->a:Ljava/util/Set;

    const-string v1, "dataHash"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Ljcd;->a:Ljava/util/Set;

    const-string v1, "hash"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Ljcd;->a:Ljava/util/Set;

    const-string v1, "idSessao"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Ljcd;->a:Ljava/util/Set;

    const-string v1, "objSerial"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Ljcd;->a:Ljava/util/Set;

    const-string v1, "conteudoArquivoManifestacao"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljcd;->b:Ljava/util/Set;

    .line 163
    sget-object v0, Ljcd;->b:Ljava/util/Set;

    const-string v1, "getPublicKey"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Ljcd;->b:Ljava/util/Set;

    const-string v1, "init"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Ljcd;->b:Ljava/util/Set;

    const-string v1, "buscarPorCoordenada2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Ljcd;->b:Ljava/util/Set;

    const-string v1, "buscarPorAgencia"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Ljcd;->b:Ljava/util/Set;

    const-string v1, "listaBancosPopularesISPB"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Ljcd;->b:Ljava/util/Set;

    const-string v1, "validarCPFNovo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Ljcd;->b:Ljava/util/Set;

    const-string v1, "obterUsuarioCpfNovo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Ljcd;->b:Ljava/util/Set;

    const-string v1, "prepararPerfilDispositivo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Ljcd;->b:Ljava/util/Set;

    const-string v1, "validarSenhaUsuarioPorCpf"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Ljcd;->b:Ljava/util/Set;

    const-string v1, "autenticarUsuario"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Ljcd;->b:Ljava/util/Set;

    const-string v1, "buscarPorAgencia"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Ljcd;->b:Ljava/util/Set;

    const-string v1, "enviarGeolocalizacao"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Ljcd;->b:Ljava/util/Set;

    const-string v1, "formatarDadosCliente"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Ljcd;->b:Ljava/util/Set;

    const-string v1, "listaTodosBancos"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Ljcd;->b:Ljava/util/Set;

    const-string v1, "notificarPhishing"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljcd;->c:Ljava/util/Set;

    .line 181
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "getPublicKey"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "init"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "buscarPorCoordenada2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "obterUsuarioPorCpf"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "validarSessao"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "invalidarSessao"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "listaBancosPopularesISPB"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "validarCPFNovo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "obterUsuarioCpfNovo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "prepararPerfilDispositivo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "validarSenhaUsuarioPorCpf"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "autenticarUsuario"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "enviarGeolocalizacao"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "formatarDadosCliente"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "listaTodosBancos"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "consultaContratosCP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Ljcd;->c:Ljava/util/Set;

    const-string v1, "notificarPhishing"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-static {}, Ljcd;->c()V

    .line 202
    invoke-static {}, Ljcd;->a()V

    .line 203
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 584
    const-string v0, "//soapenv:Body"

    sget-object v1, Ljcd;->a:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lmxj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljcd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 624
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 625
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 628
    invoke-interface {v0, p1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 629
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 630
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    invoke-interface {v0}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v0

    .line 633
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 236
    sget-object v0, Ljcd;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 6

    .prologue
    .line 250
    sget-object v0, Ljcd;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 13

    .prologue
    .line 258
    sget-object v0, Ljcd;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 340
    :goto_0
    return-object v0

    .line 262
    :cond_0
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v2

    .line 264
    const/4 v1, 0x0

    .line 266
    const/4 v0, 0x0

    move v12, v0

    move v0, v1

    move v1, v12

    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 267
    invoke-static {v2}, Ljcd;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 277
    :cond_1
    if-eqz v0, :cond_a

    .line 280
    const-string v0, "<web:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    const/4 v1, 0x0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 282
    const/4 v9, 0x0

    .line 284
    const-string v0, ""

    .line 288
    const-string v1, "connUuid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 289
    const-string v0, "<connUuid>"

    .line 295
    :cond_2
    :goto_2
    sget-object v1, Ljcd;->c:Ljava/util/Set;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 296
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    .line 297
    const-string v1, "<requestId>"

    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "</requestId>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 300
    :cond_3
    sget-object v1, Ljcd;->b:Ljava/util/Set;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 301
    invoke-static {p1}, Ljcd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    const-string v2, "<dataHash>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "</dataHash>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 305
    :cond_4
    invoke-static {}, Lmyu;->a()Lmyu;

    move-result-object v0

    invoke-virtual {v0, p1, p0, v7}, Lmyu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x0

    .line 309
    sget-object v1, Ljcd;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz p4, :cond_b

    .line 310
    const/4 v0, 0x1

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lhas;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 314
    const-string v1, "//arg0"

    invoke-static {p1, v1}, Ljcd;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move v2, v0

    move-object v0, p0

    .line 319
    :goto_3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v4, v1

    const-wide/16 v10, 0x100

    cmp-long v1, v4, v10

    if-lez v1, :cond_8

    .line 320
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 322
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 323
    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 324
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 326
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 328
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 330
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p4, :cond_7

    if-eqz v2, :cond_7

    const/4 v6, 0x1

    :goto_4
    const-string v8, "gzip"

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v10, p5

    invoke-static/range {v0 .. v10}, Ljcd;->a(Ljava/lang/String;[BLjava/lang/String;ZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 271
    :cond_5
    const-wide/16 v4, 0x1388

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 272
    :catch_0
    move-exception v3

    .line 273
    const-string v4, "ConnectionControler"

    const-string v5, "Erro Thread.sleep(5000)."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 290
    :cond_6
    const-string v1, "</web:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 292
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 330
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 332
    :cond_8
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p4, :cond_9

    if-eqz v2, :cond_9

    const/4 v6, 0x1

    :goto_6
    const-string v8, "UTF-8"

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v10, p5

    invoke-static/range {v0 .. v10}, Ljcd;->a(Ljava/lang/String;[BLjava/lang/String;ZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x0

    goto :goto_6

    .line 333
    :catch_1
    move-exception v0

    .line 334
    const-string v1, "ConnectionController"

    const-string v2, "Erro na compressao"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 339
    :cond_a
    const-string v0, "Dispositivo com conex\u00e3o inst\u00e1vel ou sem acesso \u00e0 internet. Verifique se sua conex\u00e3o est\u00e1 dispon\u00edvel. Por favor acesse novamente."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcd;->a(Ljava/lang/String;Z)V

    .line 340
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    move v2, v0

    move-object v0, p0

    goto/16 :goto_3
.end method

.method private static a(Ljava/lang/String;[BLjava/lang/String;ZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13

    .prologue
    .line 345
    sget-object v2, Ljcd;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    const/4 v2, 0x0

    .line 561
    :cond_0
    :goto_0
    return-object v2

    .line 357
    :cond_1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ca/android/app/CaMDOHTTPClient;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 359
    sget-object v3, Ljcd;->s:Ljavax/net/ssl/SSLContext;

    if-eqz v3, :cond_2

    .line 360
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    .line 361
    sget-object v4, Ljcd;->s:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 364
    :cond_2
    if-eqz p10, :cond_3

    .line 365
    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 367
    :cond_3
    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 368
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 369
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 370
    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 371
    const-string v3, "Content-Encoding"

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 375
    if-eqz p6, :cond_7

    .line 376
    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v3, "accept"

    const-string v4, "application/json"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lhbo; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 386
    :cond_4
    :goto_1
    :try_start_1
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 387
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lhbo; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_4

    .line 393
    :goto_2
    :try_start_2
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lhbo; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/dom4j/DocumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 395
    :try_start_3
    invoke-virtual {v4, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 396
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 398
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 399
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 402
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 407
    invoke-static {v2}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_8

    .line 408
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lhbo; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/dom4j/DocumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v3

    .line 411
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 412
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v4}, Ljcd;->a(Ljava/io/InputStream;)[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    .line 417
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 420
    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 422
    if-eqz p6, :cond_5

    .line 423
    move-object/from16 v0, p7

    invoke-static {v3, v0}, Ljcd;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lhbo; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/dom4j/DocumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v3

    .line 427
    :cond_5
    :try_start_7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lhbo; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/dom4j/DocumentException; {:try_start_7 .. :try_end_7} :catch_4

    .line 432
    :goto_5
    :try_start_8
    invoke-static {}, Lmyu;->a()Lmyu;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v3, v0}, Lmyu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 435
    :cond_6
    const-string v2, "Erro_Connection_Jab_Response_Html_Ou_Vazio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v2, "Ocorreu um erro de comunica\u00e7\u00e3o. Por favor, tente novamente em instantes."

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljcd;->a(Ljava/lang/String;Z)V

    move-object v2, v3

    goto/16 :goto_0

    .line 378
    :cond_7
    if-eqz p2, :cond_4

    .line 379
    const-string v3, "Content-type"

    const-string v4, "text/xml; charset=utf-8"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v3, "SOAPAction"

    const-string v4, "/"

    const-string v5, ""

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lhbo; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/dom4j/DocumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_1

    .line 476
    :catch_0
    move-exception v2

    move-object v3, v2

    .line 477
    const/4 v2, 0x0

    .line 479
    const-string v4, "ConnectionControler"

    const-string v5, "Erro ao tentar estabelecer conex\u00e3o com o servidor - ConnectionTimeOut"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    add-int/lit8 v6, p4, 0x1

    const/4 v3, 0x3

    if-ge v6, v3, :cond_14

    .line 484
    const-wide/16 v2, 0x1388

    :try_start_9
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :goto_6
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    .line 488
    invoke-static/range {v2 .. v12}, Ljcd;->a(Ljava/lang/String;[BLjava/lang/String;ZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 388
    :catch_1
    move-exception v3

    .line 389
    :try_start_a
    const-string v4, "Error"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lhbo; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/dom4j/DocumentException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_2

    .line 495
    :catch_2
    move-exception v2

    move-object v3, v2

    .line 496
    const/4 v2, 0x0

    .line 498
    invoke-virtual {v3}, Ljava/net/SocketTimeoutException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v3}, Ljava/net/SocketTimeoutException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "failed to connect to"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 499
    const-string v4, "ConnectionControler"

    const-string v5, "Erro ao tentar estabelecer conex\u00e3o com o servidor - ConnectionTimeOut"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    add-int/lit8 v6, p4, 0x1

    const/4 v3, 0x3

    if-ge v6, v3, :cond_15

    .line 504
    const-wide/16 v2, 0x1388

    :try_start_b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :goto_7
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    .line 508
    invoke-static/range {v2 .. v12}, Ljcd;->a(Ljava/lang/String;[BLjava/lang/String;ZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 398
    :catchall_0
    move-exception v3

    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 399
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v3
    :try_end_c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lhbo; {:try_start_c .. :try_end_c} :catch_3
    .catch Lorg/dom4j/DocumentException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 542
    :catch_3
    move-exception v2

    .line 543
    :goto_8
    const/4 v3, 0x0

    .line 545
    const-string v4, "ConnectionControler"

    const-string v5, "Erro de validacao."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    const-string v2, "error sessao"

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljcd;->a(Ljava/lang/String;Z)V

    move-object v2, v3

    .line 559
    goto/16 :goto_0

    .line 408
    :cond_8
    :try_start_d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lhbo; {:try_start_d .. :try_end_d} :catch_3
    .catch Lorg/dom4j/DocumentException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    move-result-object v3

    goto/16 :goto_3

    .line 414
    :cond_9
    :try_start_e
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v4}, Ljcd;->a(Ljava/io/InputStream;)[B
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object v4

    goto/16 :goto_4

    .line 417
    :catchall_1
    move-exception v2

    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v2

    .line 542
    :catch_4
    move-exception v2

    goto :goto_8

    .line 428
    :catch_5
    move-exception v4

    .line 429
    const-string v5, "ConnectionControler"

    const-string v6, "Erro ao encerrar conexao."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lhbo; {:try_start_f .. :try_end_f} :catch_3
    .catch Lorg/dom4j/DocumentException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_5

    .line 548
    :catch_6
    move-exception v2

    move-object v3, v2

    .line 549
    const/4 v2, 0x0

    .line 551
    const-string v4, "ConnectionControler"

    const-string v5, "Erro inesperado ao tentar se comunicar com o servidor."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    const-string v4, "Error"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v3, "Request Action"

    move-object/from16 v0, p7

    invoke-static {v3, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v3, "Dispositivo com conex\u00e3o inst\u00e1vel ou sem acesso \u00e0 internet. Verifique se sua conex\u00e3o est\u00e1 dispon\u00edvel. Por favor acesse novamente."

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljcd;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 440
    :cond_a
    :try_start_10
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "error sessao"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 441
    new-instance v2, Lhbo;

    invoke-direct {v2}, Lhbo;-><init>()V

    throw v2

    .line 442
    :cond_b
    const-string v4, "Hash validation error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "Ocorreu um erro de valida\u00e7\u00e3o. Por favor, entre em contato com a Central de Atendimento."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 444
    :cond_c
    new-instance v2, Lhbo;

    invoke-direct {v2}, Lhbo;-><init>()V

    throw v2

    .line 446
    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "incorrect authentication"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 447
    const-string v2, "Erro_Token_BKS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v2, "Conex\u00e3o perdida. Por favor, aguarde uns minutos e acesse novamente."

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljcd;->a(Ljava/lang/String;Z)V

    move-object v2, v3

    goto/16 :goto_0

    .line 450
    :cond_e
    const-string v4, "faultstring"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "faultcode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 454
    :cond_f
    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?><soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\"><soapenv:Body><return>"

    const-string v4, "<faultstring>"

    .line 455
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "</faultstring>"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "</faultstring>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "</return></soapenv:Body></soapenv:Envelope>"

    .line 456
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 458
    :cond_10
    invoke-static {v2}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v2

    const/16 v4, 0x1f4

    if-ne v2, v4, :cond_12

    const-string v2, "<html>"

    .line 459
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "<HTML>"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "<H1>"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "<h1>"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 461
    :cond_11
    const-string v2, "Erro_Connection_Jab_Response_Html_Ou_Vazio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0907a2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljcd;->a(Ljava/lang/String;Z)V

    move-object v2, v3

    goto/16 :goto_0

    .line 465
    :cond_12
    sget-object v2, Ljcd;->b:Ljava/util/Set;

    move-object/from16 v0, p7

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 466
    const-string v2, "//dataHash"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 471
    :cond_13
    if-eqz p9, :cond_19

    const-string v2, "//requestId"

    invoke-static {v3, v2}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 472
    new-instance v2, Lhbo;

    invoke-direct {v2}, Lhbo;-><init>()V

    throw v2
    :try_end_10
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Lhbo; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lorg/dom4j/DocumentException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 485
    :catch_7
    move-exception v2

    .line 486
    const-string v3, "ConnectionControler"

    const-string v4, "Erro Thread.sleep(5000)."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 492
    :cond_14
    if-eqz p10, :cond_0

    .line 493
    const-string v3, "Dispositivo com conex\u00e3o inst\u00e1vel ou sem acesso \u00e0 internet. Verifique se sua conex\u00e3o est\u00e1 dispon\u00edvel. Por favor acesse novamente."

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljcd;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 505
    :catch_8
    move-exception v2

    .line 506
    const-string v3, "ConnectionControler"

    const-string v4, "Erro Thread.sleep(5000)."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 513
    :cond_15
    if-eqz p10, :cond_0

    .line 514
    const-string v3, "Dispositivo com conex\u00e3o inst\u00e1vel ou sem acesso \u00e0 internet. Verifique se sua conex\u00e3o est\u00e1 dispon\u00edvel. Por favor acesse novamente."

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljcd;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 517
    :cond_16
    const-string v4, "ConnectionControler"

    const-string v5, "Erro ao tentar receber informa\u00e7\u00f5es do servidor - ReadTimeOut"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    if-eqz p3, :cond_18

    .line 520
    add-int/lit8 v7, p5, 0x1

    const/4 v3, 0x3

    if-ge v7, v3, :cond_17

    .line 522
    const-wide/16 v2, 0x1388

    :try_start_11
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    :goto_9
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    .line 526
    invoke-static/range {v2 .. v12}, Ljcd;->a(Ljava/lang/String;[BLjava/lang/String;ZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 523
    :catch_9
    move-exception v2

    .line 524
    const-string v3, "ConnectionControler"

    const-string v4, "Erro Thread.sleep(5000)."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 531
    :cond_17
    if-eqz p10, :cond_0

    .line 532
    const-string v3, "Dispositivo com conex\u00e3o inst\u00e1vel ou sem acesso \u00e0 internet. Verifique se sua conex\u00e3o est\u00e1 dispon\u00edvel. Por favor acesse novamente."

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljcd;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 537
    :cond_18
    if-eqz p10, :cond_0

    .line 538
    const-string v3, "Dispositivo com conex\u00e3o inst\u00e1vel ou sem acesso \u00e0 internet. Verifique se sua conex\u00e3o est\u00e1 dispon\u00edvel. Por favor acesse novamente."

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljcd;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_19
    move-object v2, v3

    goto/16 :goto_0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 212
    sget-object v0, Ljcd;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 638
    if-nez p2, :cond_0

    .line 639
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 642
    :cond_0
    sget-object v0, Ljcd;->a:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 644
    const-string v0, "//soapenv:Body"

    invoke-static {p0, v0, p2}, Lmxj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 645
    invoke-static {p0, p1}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 646
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljcd;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 647
    if-nez v0, :cond_1

    .line 648
    new-instance v0, Lhbo;

    invoke-direct {v0}, Lhbo;-><init>()V

    throw v0

    .line 650
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 685
    invoke-static {}, Laqt;->a()V

    .line 687
    invoke-static {}, Lcom/santander/app/MinhaConta;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    sget-object v0, Ljcd;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    sget-object v0, Ljcd;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 697
    const-string v0, "error sessao"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 698
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0903b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 701
    :cond_2
    invoke-static {}, Lcom/santander/app/MinhaConta;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 702
    invoke-static {p0, p1}, Lcom/santander/app/MinhaConta;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 704
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/ExitActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 706
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 707
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 708
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v1, "showHome"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 710
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static a(Lorg/dom4j/Element;Ljava/lang/StringBuilder;)V
    .locals 8

    .prologue
    .line 739
    invoke-interface {p0}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v0

    .line 741
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 742
    invoke-interface {v0}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 743
    const-string v2, "{"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-static {v0, p1}, Ljcd;->a(Lorg/dom4j/Element;Ljava/lang/StringBuilder;)V

    .line 745
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 747
    :cond_0
    invoke-interface {v0}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v2

    .line 748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 750
    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v4

    .line 752
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 753
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 754
    sparse-switch v5, :sswitch_data_0

    .line 776
    const/16 v6, 0x20

    if-ge v5, v6, :cond_1

    .line 777
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 778
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 758
    :sswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\\"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 761
    :sswitch_1
    const-string v5, "\\b"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 764
    :sswitch_2
    const-string v5, "\\f"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 767
    :sswitch_3
    const-string v5, "\\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 770
    :sswitch_4
    const-string v5, "\\r"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 773
    :sswitch_5
    const-string v5, "\\t"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 780
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 785
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 789
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 790
    return-void

    .line 754
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_5
        0xa -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_4
        0x22 -> :sswitch_0
        0x2f -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 226
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 227
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4

    .prologue
    .line 566
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 568
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 571
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 572
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 579
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0

    .line 575
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 577
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 579
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 577
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 598
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->h()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 602
    const-string v0, ""

    .line 620
    :goto_0
    return-object v0

    .line 610
    :cond_0
    :try_start_0
    sget-object v0, Ljcd;->u:Lnaf;

    invoke-virtual {v0, p0}, Lnaf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    sget-object v1, Ljcd;->u:Lnaf;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lnaf;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    .line 620
    const-string v0, ""

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 222
    sget-object v0, Ljcd;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 655
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->h()[B

    move-result-object v1

    if-nez v1, :cond_1

    .line 681
    :cond_0
    :goto_0
    return v0

    .line 664
    :cond_1
    :try_start_0
    sget-object v1, Ljcd;->u:Lnaf;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v1

    .line 669
    sget-object v2, Ljcd;->u:Lnaf;

    invoke-virtual {v2, p0}, Lnaf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 672
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    const/4 v0, 0x1

    goto :goto_0

    .line 676
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 716
    :try_start_0
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 717
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 719
    invoke-interface {v0, p1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 720
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 721
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 722
    instance-of v1, v0, Lorg/dom4j/Element;

    if-eqz v1, :cond_0

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    check-cast v0, Lorg/dom4j/Element;

    invoke-static {v0, v1}, Ljcd;->a(Lorg/dom4j/Element;Ljava/lang/StringBuilder;)V

    .line 726
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 735
    :goto_0
    return-object v0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    const-string v1, "Error"

    invoke-virtual {v0}, Lorg/dom4j/DocumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static c()V
    .locals 4

    .prologue
    .line 114
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->m()Ljava/lang/String;

    move-result-object v1

    .line 116
    if-nez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    .line 125
    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 129
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v2

    .line 131
    const-string v3, "https://m.santander.com.br/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "https://mbbocu.santander.com.br/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 132
    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 144
    :cond_3
    :goto_1
    invoke-static {v0}, Lnah;->a(Ljava/io/InputStream;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sput-object v0, Ljcd;->s:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string v1, "ConnectionControler"

    const-string v2, "Falha na inicializa\u00e7\u00e3o do contexto SSL"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 133
    :cond_4
    :try_start_1
    const-string v3, "https://mbbhk.santanderbr.pre.corp/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 134
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 135
    :cond_5
    const-string v3, "https://mbbpi.santanderbr.pre.corp/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 136
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 137
    :cond_6
    const-string v3, "https://mbbdes.santanderbr.pre.corp/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 138
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 139
    :cond_7
    const-string v3, "https://mbbhk.santander.com.br/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 140
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 141
    :cond_8
    const-string v3, "https://mbbdeploy.santander.com.br/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x22

    const/4 v2, 0x0

    .line 794
    :cond_0
    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 796
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 797
    const-string v3, "}"

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 798
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 800
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ljcd;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 802
    :cond_1
    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    :cond_2
    const-string v0, "\":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\"><soapenv:Body><dlwmin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Response xmlns:dlwmin=\"http://webservice.mbb.app.bsbr.altec.com/\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"><return>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</return></dlwmin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Response></soapenv:Body></soapenv:Envelope>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 838
    :goto_0
    return-object v0

    .line 810
    :cond_3
    const-string v0, "\":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 812
    const-string v0, ""

    move v1, v2

    .line 814
    :goto_1
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_6

    .line 815
    aget-object v3, v4, v1

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 817
    aget-object v5, v4, v1

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 819
    if-lez v1, :cond_4

    .line 820
    aget-object v6, v4, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 821
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_5

    .line 822
    const-string v6, "PLACE_HOLDER"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 828
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ">PLACE_HOLDER</"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 814
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_1

    .line 824
    :cond_5
    const-string v6, "PLACE_HOLDER"

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 831
    :cond_6
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v4, v1

    .line 832
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_7

    .line 833
    const-string v2, "PLACE_HOLDER"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 835
    :cond_7
    const-string v2, "PLACE_HOLDER"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
