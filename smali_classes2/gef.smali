.class public Lgef;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lgrk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lgef;->finish()V

    .line 28
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f040038

    invoke-virtual {p0, v0}, Lgef;->setContentView(I)V

    .line 22
    const v0, 0x7f090289

    invoke-virtual {p0, v0}, Lgef;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p0}, Lgpu;->a(Landroid/support/v7/app/AppCompatActivity;Ljava/lang/String;Lgrk;)V

    .line 23
    return-void
.end method
