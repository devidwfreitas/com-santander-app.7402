.class public Ljar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljav;


# instance fields
.field private a:Lizo;

.field private b:Liwp;


# direct methods
.method public constructor <init>(Lizo;Landroid/support/v7/app/AppCompatActivity;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Ljar;->a:Lizo;

    .line 24
    new-instance v0, Liwi;

    invoke-direct {v0, p0, p2}, Liwi;-><init>(Ljav;Landroid/support/v7/app/AppCompatActivity;)V

    iput-object v0, p0, Ljar;->b:Liwp;

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ljar;->b:Liwp;

    invoke-interface {v0}, Liwp;->a()V

    .line 30
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
