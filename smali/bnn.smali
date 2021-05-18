.class final Lbnn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbns;


# instance fields
.field final synthetic a:Lbpw;

.field final synthetic b:Lbpw;

.field final synthetic c:Lbns;


# direct methods
.method constructor <init>(Lbpw;Lbpw;Lbns;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lbnn;->a:Lbpw;

    iput-object p2, p0, Lbnn;->b:Lbpw;

    iput-object p3, p0, Lbnn;->c:Lbns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lbnn;->a:Lbpw;

    iget-object v0, v0, Lbpw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lbnn;->b:Lbpw;

    iget-object v0, p0, Lbnn;->b:Lbpw;

    iget-object v0, v0, Lbpw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lbpw;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lbnn;->c:Lbns;

    invoke-interface {v0}, Lbns;->a()V

    goto :goto_0
.end method

.method public a(Lbhp;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lbnn;->a:Lbpw;

    iget-object v0, v0, Lbpw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lbnn;->a:Lbpw;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lbpw;->a:Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lbnn;->c:Lbns;

    invoke-interface {v0, p1}, Lbns;->a(Lbhp;)V

    goto :goto_0
.end method
