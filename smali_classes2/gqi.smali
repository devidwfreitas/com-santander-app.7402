.class final Lgqi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1331
    invoke-static {}, Lgpu;->o()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1332
    const/4 v0, 0x1

    invoke-static {v0}, Lgpu;->a(Z)V

    .line 1333
    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090540

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmyo;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1334
    return-void
.end method
