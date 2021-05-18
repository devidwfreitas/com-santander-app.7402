.class public Lhbu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lhbu;->a:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lhbu;->b:Landroid/content/Intent;

    .line 22
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 23
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lhbu;->a:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lhbu;->b:Landroid/content/Intent;

    .line 17
    return-void
.end method
