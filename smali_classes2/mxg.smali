.class public Lmxg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "numeroTelefono"


# instance fields
.field private final b:I

.field private c:Landroid/app/Activity;

.field private d:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x382

    iput v0, p0, Lmxg;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 31
    iget-object v1, p0, Lmxg;->c:Landroid/app/Activity;

    const/16 v2, 0x382

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 32
    return-void
.end method

.method public a(IILandroid/content/Intent;Lmxh;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 41
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 42
    const/16 v0, 0x382

    if-ne p1, v0, :cond_1

    .line 43
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 46
    const-string v6, ""

    .line 48
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 53
    iget-object v0, p0, Lmxg;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "contact_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 56
    :try_start_1
    const-string v0, "data1"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 58
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 59
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 60
    :try_start_2
    const-string v0, "numeroTelefono"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    :goto_0
    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 70
    invoke-interface {p4}, Lmxh;->a()V

    .line 79
    :cond_1
    :goto_1
    return-void

    .line 72
    :cond_2
    invoke-interface {p4, v8}, Lmxh;->a(Ljava/util/Map;)V

    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    .line 65
    :goto_2
    :try_start_3
    const-string v3, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 67
    if-eqz v2, :cond_3

    .line 68
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 70
    invoke-interface {p4}, Lmxh;->a()V

    goto :goto_1

    .line 72
    :cond_4
    invoke-interface {p4, v8}, Lmxh;->a(Ljava/util/Map;)V

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    move-object v2, v7

    :goto_3
    if-eqz v2, :cond_5

    .line 68
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 70
    invoke-interface {p4}, Lmxh;->a()V

    .line 72
    :goto_4
    throw v0

    :cond_6
    invoke-interface {p4, v8}, Lmxh;->a(Ljava/util/Map;)V

    goto :goto_4

    .line 76
    :cond_7
    invoke-interface {p4}, Lmxh;->a()V

    goto :goto_1

    .line 67
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 64
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_8
    move-object v1, v6

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lmxg;->c:Landroid/app/Activity;

    .line 92
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 36
    const/16 v1, 0x382

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 37
    return-void
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lmxg;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public b(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lmxg;->d:Landroid/support/v4/app/Fragment;

    .line 99
    return-void
.end method

.method public c()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lmxg;->d:Landroid/support/v4/app/Fragment;

    return-object v0
.end method
