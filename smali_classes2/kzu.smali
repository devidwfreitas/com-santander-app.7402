.class public Lkzu;
.super Llbb;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lkzu;->b:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    iput-object p2, p0, Lkzu;->a:Ljava/lang/String;

    invoke-direct {p0}, Llbb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lkzu;->b:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    iget-object v1, p0, Lkzu;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->b(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Ljava/lang/String;)V

    .line 102
    return-void
.end method
