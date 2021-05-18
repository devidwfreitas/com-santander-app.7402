.class Lkij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkv",
        "<",
        "Lkic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkig;


# direct methods
.method constructor <init>(Lkig;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lkij;->a:Lkig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 193
    check-cast p1, Lkic;

    invoke-virtual {p0, p1}, Lkij;->a(Lkic;)V

    return-void
.end method

.method public a(Lkic;)V
    .locals 3

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    iget-object v0, p0, Lkij;->a:Lkig;

    invoke-static {v0}, Lkig;->a(Lkig;)Lkip;

    move-result-object v0

    const-string v1, "Ocorreu um erro ao carregar as informa\u00e7\u00f5es"

    invoke-virtual {v0, v1}, Lkip;->a(Ljava/lang/String;)V

    .line 205
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p1}, Lkic;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    invoke-virtual {p1}, Lkic;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lkij;->a:Lkig;

    invoke-static {v1}, Lkig;->a(Lkig;)Lkip;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lkip;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lkij;->a:Lkig;

    invoke-static {v0}, Lkig;->a(Lkig;)Lkip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkip;->a(Lkic;)V

    goto :goto_0
.end method
