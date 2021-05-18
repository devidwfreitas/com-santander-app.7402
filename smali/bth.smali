.class public Lbth;
.super Lbgz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/facebook/login/widget/LoginButton;


# direct methods
.method public constructor <init>(Lcom/facebook/login/widget/LoginButton;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lbth;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-direct {p0}, Lbgz;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lbth;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/login/widget/LoginButton;->b(Lcom/facebook/login/widget/LoginButton;)V

    .line 578
    return-void
.end method
