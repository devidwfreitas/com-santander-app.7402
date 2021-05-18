.class Lith;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lirx;


# instance fields
.field final synthetic a:Litg;


# direct methods
.method constructor <init>(Litg;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lith;->a:Litg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 135
    const-string v0, "INPUT_TYPE_SENHA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lith;->a:Litg;

    invoke-static {v0}, Litg;->a(Litg;)Litc;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Litc;->b(I)V

    .line 138
    iget-object v0, p0, Lith;->a:Litg;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Litg;->a(Litg;I)I

    .line 145
    :cond_0
    :goto_0
    iget-object v0, p0, Lith;->a:Litg;

    invoke-static {v0}, Litg;->a(Litg;)Litc;

    move-result-object v0

    iget-object v1, p0, Lith;->a:Litg;

    invoke-static {v1}, Litg;->b(Litg;)I

    move-result v1

    invoke-interface {v0, v1}, Litc;->c(I)V

    .line 146
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lith;->a:Litg;

    invoke-static {v0}, Litg;->a(Litg;)Litc;

    move-result-object v0

    const/16 v1, 0x81

    invoke-interface {v0, v1}, Litc;->b(I)V

    .line 141
    iget-object v0, p0, Lith;->a:Litg;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Litg;->a(Litg;I)I

    goto :goto_0
.end method
