.class Lbsu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbsz;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    const-string v0, "activity"

    invoke-static {p1, v0}, Lbqx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    iput-object p1, p0, Lbsu;->a:Landroid/app/Activity;

    .line 701
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lbsu;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lbsu;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 706
    return-void
.end method
