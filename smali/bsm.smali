.class Lbsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbsh;


# instance fields
.field final synthetic a:Lbsl;


# direct methods
.method constructor <init>(Lbsl;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lbsm;->a:Lbsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lbsm;->a:Lbsl;

    invoke-static {v0, p1}, Lbsl;->a(Lbsl;Lcom/facebook/login/LoginClient$Result;)V

    .line 72
    return-void
.end method
