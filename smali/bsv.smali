.class Lbsv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbsz;


# instance fields
.field private final a:Lbpa;


# direct methods
.method constructor <init>(Lbpa;)V
    .locals 1

    .prologue
    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lbqx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    iput-object p1, p0, Lbsv;->a:Lbpa;

    .line 720
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lbsv;->a:Lbpa;

    invoke-virtual {v0}, Lbpa;->c()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lbsv;->a:Lbpa;

    invoke-virtual {v0, p1, p2}, Lbpa;->a(Landroid/content/Intent;I)V

    .line 725
    return-void
.end method
