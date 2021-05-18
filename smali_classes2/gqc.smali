.class Lgqc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lgqb;


# direct methods
.method constructor <init>(Lgqb;)V
    .locals 0

    .prologue
    .line 1160
    iput-object p1, p0, Lgqc;->a:Lgqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1163
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1164
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1165
    const-string v1, "faturaDoMes"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1166
    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1167
    return-void
.end method
