.class public Llje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Llje;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Llje;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->onBackPressed()V

    .line 386
    return-void
.end method
