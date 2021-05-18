.class public Lgyd;
.super Lgyc;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "cardPreferences"

.field private static final d:Ljava/lang/String; = "prefs_carrinho_poupanca_cpf"

.field private static e:Lgyd;


# instance fields
.field private final f:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lgyc;-><init>()V

    .line 58
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lgyd;->f:Landroid/content/Context;

    .line 59
    const-string v0, "cardPreferences"

    const-string v1, "prefs_carrinho_poupanca_cpf"

    invoke-virtual {p0, v0, v1}, Lgyd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lgwq;->carrinhoPoupanca:Lgwq;

    invoke-virtual {p0, v0}, Lgyd;->a(Lgwq;)V

    .line 61
    return-void
.end method

.method public static n()Lgyd;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lgyd;->e:Lgyd;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lgyd;

    invoke-direct {v0}, Lgyd;-><init>()V

    sput-object v0, Lgyd;->e:Lgyd;

    .line 54
    :cond_0
    sget-object v0, Lgyd;->e:Lgyd;

    return-object v0
.end method


# virtual methods
.method public a(Lgye;)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "conta"

    invoke-virtual {p1}, Lgye;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "contaAplicacao"

    invoke-virtual {p1}, Lgye;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "valor"

    invoke-virtual {p1}, Lgye;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dataPosition"

    invoke-virtual {p1}, Lgye;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {p1}, Lgye;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "clickCard"

    invoke-virtual {p1}, Lgye;->f()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    return-void
.end method

.method public g()Lgta;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    new-instance v0, Lgta;

    invoke-direct {v0}, Lgta;-><init>()V

    .line 65
    iget-object v1, p0, Lgyd;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09023a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgta;->b(Ljava/lang/String;)V

    .line 66
    sget-object v1, Lgwq;->carrinhoPoupanca:Lgwq;

    invoke-virtual {v0, v1}, Lgta;->a(Lgwq;)V

    .line 67
    invoke-virtual {v0, v3}, Lgta;->a(Ljava/lang/String;)V

    .line 68
    const v1, 0x7f0204c9

    invoke-virtual {v0, v1}, Lgta;->a(I)V

    .line 69
    const v1, 0x7f0204cd

    invoke-virtual {v0, v1}, Lgta;->b(I)V

    .line 70
    const v1, 0x7f0204cb

    invoke-virtual {v0, v1}, Lgta;->c(I)V

    .line 71
    invoke-virtual {v0, v3}, Lgta;->c(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v3}, Lgta;->d(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v3}, Lgta;->e(Ljava/lang/String;)V

    .line 74
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    const-string v1, "valor"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    const-string v1, "data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    const-string v1, "contaAplicacao"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    const-string v1, "conta"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    const-string v1, "dataPosition"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    const-string v1, "clickCard"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public o()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "conta"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "contaAplicacao"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "valor"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dataPosition"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    iget-object v0, p0, Lgyd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "clickCard"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    return-void
.end method

.method public p()Lgye;
    .locals 7

    .prologue
    .line 97
    new-instance v0, Lgye;

    invoke-virtual {p0}, Lgyd;->k()I

    move-result v1

    invoke-virtual {p0}, Lgyd;->j()I

    move-result v2

    invoke-virtual {p0}, Lgyd;->l()I

    move-result v3

    invoke-virtual {p0}, Lgyd;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lgyd;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lgyd;->m()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lgye;-><init>(IIILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
