.class Lkzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llci;


# instance fields
.field final synthetic a:Lkzv;


# direct methods
.method constructor <init>(Lkzv;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lkzw;->a:Lkzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lkzw;->a:Lkzv;

    iget-object v0, v0, Lkzv;->b:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->c(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)V

    .line 164
    return-void
.end method
