.class public Llrh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Llrh;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 538
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 539
    iget-object v0, p0, Llrh;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->finish()V

    .line 540
    return-void
.end method
