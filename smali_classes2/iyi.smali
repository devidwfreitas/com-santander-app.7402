.class public Liyi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Liyi;->a:Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 241
    new-instance v0, Liyj;

    invoke-direct {v0, p0}, Liyj;-><init>(Liyi;)V

    .line 248
    new-instance v1, Liyk;

    invoke-direct {v1, p0}, Liyk;-><init>(Liyi;)V

    .line 256
    invoke-static {}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->g()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->f()Landroid/app/Dialog;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lmyl;->a(Landroid/app/Activity;Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->a(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 257
    return-void
.end method
