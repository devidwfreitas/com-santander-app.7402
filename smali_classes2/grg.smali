.class final Lgrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgrk;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatActivity;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lgrg;->a:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lgrg;->a:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lgrk;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lgrg;->a:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lgrk;

    invoke-interface {v0}, Lgrk;->a()V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lgrg;->a:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    goto :goto_0
.end method
