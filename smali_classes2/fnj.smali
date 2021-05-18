.class public Lfnj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/SaldoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/SaldoActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lfnj;->a:Lcom/santander/app/SaldoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 133
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 134
    iget-object v0, p0, Lfnj;->a:Lcom/santander/app/SaldoActivity;

    invoke-virtual {v0}, Lcom/santander/app/SaldoActivity;->finish()V

    .line 136
    :cond_0
    return-void
.end method
