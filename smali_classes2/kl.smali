.class public Lkl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbr/com/santander/dynamicauth/features/idsantander/a/a;


# direct methods
.method public constructor <init>(Lbr/com/santander/dynamicauth/features/idsantander/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkl;->b:Lbr/com/santander/dynamicauth/features/idsantander/a/a;

    iput-object p2, p0, Lkl;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lkl;->b:Lbr/com/santander/dynamicauth/features/idsantander/a/a;

    iget-object v1, p0, Lkl;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->a(Lbr/com/santander/dynamicauth/features/idsantander/a/a;Ljava/lang/String;)V

    return-void
.end method
