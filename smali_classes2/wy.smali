.class Lwy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lot;


# instance fields
.field final synthetic a:Lwx;


# direct methods
.method constructor <init>(Lwx;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lwy;->a:Lwx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 5

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lwy;->a:Lwx;

    new-instance v1, Lom;

    invoke-direct {v1, p1}, Lom;-><init>(Labv;)V

    invoke-static {v0, v1}, Lwx;->a(Lwx;Lom;)Lom;

    .line 156
    iget-object v0, p0, Lwy;->a:Lwx;

    invoke-static {v0}, Lwx;->a(Lwx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    iget-object v1, p0, Lwy;->a:Lwx;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lwx;->a(Lwx;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 159
    new-instance v1, Laby;

    const-string v2, "-1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unparseable data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Laby;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lwy;->a(Laby;)V

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Investment not selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lwy;->a:Lwx;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lwx;->a(Lwx;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 167
    new-instance v0, Lwz;

    invoke-direct {v0, p0}, Lwz;-><init>(Lwy;)V

    .line 178
    iget-object v1, p0, Lwy;->a:Lwx;

    invoke-virtual {v1}, Lwx;->e()Lack;

    move-result-object v1

    invoke-static {v1, v0}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 179
    return-void
.end method
