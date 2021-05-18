.class Lbtg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lboj;

.field final synthetic b:Lbtf;


# direct methods
.method constructor <init>(Lbtf;Lboj;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lbtg;->b:Lbtf;

    iput-object p2, p0, Lbtg;->a:Lboj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lbtg;->b:Lbtf;

    iget-object v0, v0, Lbtf;->b:Lcom/facebook/login/widget/LoginButton;

    iget-object v1, p0, Lbtg;->a:Lboj;

    invoke-static {v0, v1}, Lcom/facebook/login/widget/LoginButton;->a(Lcom/facebook/login/widget/LoginButton;Lboj;)V

    .line 505
    return-void
.end method
