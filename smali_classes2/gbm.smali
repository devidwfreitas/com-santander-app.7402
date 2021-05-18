.class Lgbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgbl;


# direct methods
.method constructor <init>(Lgbl;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lgbm;->a:Lgbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 71
    check-cast p1, Lgas;

    .line 73
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lgas;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lgas;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 77
    invoke-virtual {p1}, Lgas;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgaz;

    .line 78
    invoke-virtual {v0}, Lgaz;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BRL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1}, Lgas;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgaz;

    sget-object v2, Lgba;->real:Lgba;

    invoke-virtual {v0, v2}, Lgaz;->a(Lgba;)V

    .line 76
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Lgas;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgaz;

    sget-object v2, Lgba;->outra:Lgba;

    invoke-virtual {v0, v2}, Lgaz;->a(Lgba;)V

    goto :goto_1

    .line 85
    :cond_1
    iget-object v0, p0, Lgbm;->a:Lgbl;

    invoke-static {v0}, Lgbl;->a(Lgbl;)Lgbk;

    move-result-object v0

    invoke-virtual {p1}, Lgas;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lgbk;->a(Ljava/util/List;)V

    .line 89
    :cond_2
    :goto_2
    return-void

    .line 86
    :cond_3
    if-eqz p1, :cond_2

    .line 87
    iget-object v0, p0, Lgbm;->a:Lgbl;

    invoke-static {v0}, Lgbl;->a(Lgbl;)Lgbk;

    move-result-object v0

    invoke-interface {v0, p1}, Lgbk;->a(Lgas;)V

    goto :goto_2
.end method
