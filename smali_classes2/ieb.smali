.class public Lieb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/faturas/activity/FaturasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lieb;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lieb;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    const-class v1, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Ljava/lang/Class;)V

    .line 265
    return-void
.end method
