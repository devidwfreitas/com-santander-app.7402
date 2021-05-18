.class public Lbr/com/santander/dynamicauth/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/regex/Pattern;

.field private b:Ljava/util/regex/Pattern;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "(?:^|[\\W])((ht|f)tp(s?):\\/\\/|www\\.)(([\\w\\-]+\\.){1,}?([\\w\\-.~]+\\/?)*[\\p{Alnum}.,%_=?&#\\-+()\\[\\]\\*$~@!:/{};\']*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/dynamicauth/a/a/a;->a:Ljava/util/regex/Pattern;

    const-string v0, "Santander|Sant|Satander|Sanander|Santande|Sanlander|Sampander|Santa|Santader|Sanader|Santade|Santtder|santnander|Vangogh|Select|bloqueio de sua conta|cart\u00e3o online|cartao online|reative seu cart\u00e3o|reative seu cartao|online expirado|evite multa|evite cancelamento|regularizar conta|tabela de seguranca|tabela de seguran\u00c7a|tabela de seguran\u00e7a|faca reativa\u00e7\u00e3o|faca reativa\u00c7ao|chave de seguranca|chave de seguran\u00c7a|modulo de protecao|guardi\u00e3o|Agendamento de saque|Bloqueio conta|Bloqueio cart\u00e3o"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/dynamicauth/a/a/a;->b:Ljava/util/regex/Pattern;

    iput-object p1, p0, Lbr/com/santander/dynamicauth/a/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lbr/com/santander/dynamicauth/a/a/a;->a:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lbr/com/santander/dynamicauth/a/a/a;->b:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lbr/com/santander/dynamicauth/a/a/a;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lbr/com/santander/dynamicauth/a/a/a;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
